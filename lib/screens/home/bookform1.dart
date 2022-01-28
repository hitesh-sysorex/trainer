//book a yoga trainer jo yoga category ko click krne pe ata h vo h

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:trainer/models/bookform.dart';
import 'package:trainer/screens/home/brodcast.dart';
import 'package:trainer/screens/home/home.dart';

class BookForm1 extends StatefulWidget {
  BookForm1({Key? key}) : super(key: key);

  @override
  _BookForm1State createState() => _BookForm1State();
}

class _BookForm1State extends State<BookForm1> {
  List<BookFormModel> form1 = [
    BookFormModel(title: 'Daily'),
    BookFormModel(title: 'Several times in a week'),
    BookFormModel(title: 'As recommended by trainer'),
    BookFormModel(title: "One's a week"),
    BookFormModel(title: "Others"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              Opacity(
                opacity: 0.2,
                child: Image.asset(
                  "assets/images/bookform.png",
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Text(
                        "Book a Yoga Trainer",
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).textScaleFactor * 23,
                            color: Color(0xff004163),
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Text(
                        "How often would you like to Train?",
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).textScaleFactor * 22,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Column(
                        children: form1.map(buildSingleCheckbox).toList(),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 15,
                left: 10,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Home(),
                    ));
                  },
                  icon: Icon(MdiIcons.arrowLeftBoldCircle,
                      color: Theme.of(context).primaryColor, size: 50),
                ),
              ),
              Positioned(
                bottom: 15,
                right: 30,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Brodcast()));
                  },
                  icon: Icon(MdiIcons.arrowRightBoldCircle,
                      color: Theme.of(context).primaryColor, size: 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSingleCheckbox(BookFormModel notification) => buildCheckbox(
        notification: notification,
        onClicked: () {
          setState(() {
            final newValue = !notification.value;
            notification.value = newValue;
          });
        },
      );
  Widget buildCheckbox({
    @required BookFormModel? notification,
    @required VoidCallback? onClicked,
  }) =>
      Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.02,
            horizontal: MediaQuery.of(context).size.width * 0.05),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.09,
          child: Card(
            elevation: notification!.value ? 2 : 0,
            color: Color(0xffFAFAFA),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: ListTile(
                onTap: onClicked,
                leading: Text(
                  notification.title!,
                  style: TextStyle(
                      fontSize: MediaQuery.textScaleFactorOf(context) * 20,
                      fontWeight: FontWeight.w400),
                ),
                trailing: Transform.scale(
                  scale: 1.2,
                  child: Checkbox(
                    shape: CircleBorder(),
                    activeColor: Color(0xff004163).withOpacity(0.95),
                    tristate: true,
                    value: notification.value,
                    onChanged: (value) => onClicked!(),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
