import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetTextField extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  GetTextField(this.label, this.controller);

  @override
  _GetTextFieldState createState() => _GetTextFieldState();
}

class _GetTextFieldState extends State<GetTextField> {
  FocusNode myFocusNode = FocusNode();
  Color color = Colors.black38;
  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (hasFocus) {
        setState(() {
          color = hasFocus ? Theme.of(context).primaryColor : Colors.black38;
        });
      },
      child: TextFormField(
        style: const TextStyle(
          fontSize: 18,
        ),
        cursorColor: Theme.of(context).primaryColor,
        cursorHeight: 25,
        controller: widget.controller,
        focusNode: myFocusNode,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: const BorderSide(color: Colors.transparent, width: 0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: const BorderSide(color: Colors.transparent, width: 0),
          ),
          // focusColor:const Color(0xffD0EBF9),
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide:
                BorderSide(color: Theme.of(context).primaryColor, width: 1),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          labelText: widget.label,
          labelStyle: TextStyle(fontSize: 20.sp, color: color),
          // label: Text(
          //   widget.label,
          //   style: TextStyle(fontSize: 20.sp, color: color),
          // )
        ),
      ),
    );
  }
}
