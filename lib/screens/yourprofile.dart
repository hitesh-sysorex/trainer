import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trainer/screens/home/myactivity.dart';
import 'package:trainer/screens/home/myprograms.dart';

class YourProfile extends StatefulWidget {
  YourProfile({Key? key}) : super(key: key);

  @override
  _YourProfileState createState() => _YourProfileState();
}

class _YourProfileState extends State<YourProfile> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Align(
                alignment: Alignment.center,
                child: Text(
                  "Your Profile",
                  style: TextStyle(
                      fontSize: MediaQuery.textScaleFactorOf(context) * 16,
                      fontWeight: FontWeight.w600),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            CircleAvatar(
              radius: 70,
              backgroundColor: Color(0xff70CCE2),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 65,
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/images/yourprofile.jpg"),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Text(
              "Hello Alina",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  elevation: 5,
                  shadowColor: Color(0xff49BFE6).withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  primary: Color(0xff49BFE6),
                  fixedSize: Size(MediaQuery.of(context).size.width * 0.45,
                      MediaQuery.of(context).size.height * 0.04)),
              child: Text(
                "Edit Your Profile",
                style: TextStyle(
                  fontSize: MediaQuery.textScaleFactorOf(context) * 16,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.07),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Text(
                      "My Programs",
                      style: TextStyle(
                          color: flag ? Colors.black : Colors.black38),
                    ),
                    onPressed: () {
                      setState(() {
                        flag = true;
                      });
                    },
                  ),
                  TextButton(
                    child: Text(
                      "My Activities",
                      style: TextStyle(
                        color: flag ? Colors.black38 : Colors.black,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        flag = false;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.06),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  flag ? MyPrograms() : MyActivity(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
