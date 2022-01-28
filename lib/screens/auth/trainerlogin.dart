import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trainer/authentication.dart';
import 'package:trainer/screens/auth/signup.dart';
import 'package:trainer/screens/home/home.dart';
import 'package:trainer/widgets/textformfield.dart';
import 'package:localstorage/localstorage.dart';

class TrainerLoginPage extends StatefulWidget {
  TrainerLoginPage({Key? key}) : super(key: key);

  @override
  _TrainerLoginPageState createState() => _TrainerLoginPageState();
}

final LocalStorage userStorage = LocalStorage('user');

class _TrainerLoginPageState extends State<TrainerLoginPage> {
  FocusNode myFocusNode = FocusNode();
  final _formkey = GlobalKey();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  Color color = Colors.black38;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/trainerlogin.jpg",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.45,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        TextField(
                          controller: email,
                          // autofocus: true,
                          cursorHeight: 26,
                          style: TextStyle(
                              color: Color(0xff002136),
                              fontSize:
                                  MediaQuery.textScaleFactorOf(context) * 18),
                          cursorColor: Theme.of(context).primaryColor,
                          decoration: InputDecoration(

                              // label: Text(
                              //   "Email",
                              //   style: TextStyle(
                              //       color: Color(0xff002136),
                              //       fontSize:
                              //           MediaQuery.textScaleFactorOf(context) *
                              //               17),
                              // ),
                              labelText: "Email",
                              labelStyle: TextStyle(
                                  color: Color(0xff002136),
                                  fontSize:
                                      MediaQuery.textScaleFactorOf(context) *
                                          17),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 18),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Color(0xff002136),
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(15)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 1.0),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              filled: true,
                              fillColor: Color(0xff139dc1).withOpacity(0.2)),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        TextField(
                          controller: password,
                          // autofocus: true,
                          cursorHeight: 26,
                          style: TextStyle(
                              color: Color(0xff002136),
                              fontSize:
                                  MediaQuery.textScaleFactorOf(context) * 18),
                          cursorColor: Theme.of(context).primaryColor,
                          decoration: InputDecoration(
                              labelText: "Password",
                              labelStyle: TextStyle(
                                  color: Color(0xff002136),
                                  fontSize:
                                      MediaQuery.textScaleFactorOf(context) *
                                          17),
                              // label: Text(
                              //   "Email",
                              //   style: TextStyle(
                              //       color: Color(0xff002136),
                              //       fontSize:
                              //           MediaQuery.textScaleFactorOf(context) *
                              //               17),
                              // ),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 18),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Color(0xff002136),
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(15)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 1.0),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              filled: true,
                              fillColor: Color(0xff139dc1).withOpacity(0.2)),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff45B865),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              fixedSize: Size(
                                  MediaQuery.of(context).size.width -
                                      MediaQuery.of(context).size.width * 0.08,
                                  MediaQuery.of(context).size.height * 0.07)),
                          onPressed: () {
                            signin(email.text, password.text, context);
                            if (FirebaseAuth.instance.currentUser != null) {
                              // wrong call in wrong place!
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => Home()));
                            }
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize:
                                  MediaQuery.of(context).textScaleFactor * 19,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "forget password",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.textScaleFactorOf(context) *
                                          16,
                                  color: Color(0xff139dc1)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Do not have account?   ",
                              style: TextStyle(
                                  fontSize: 20.sp, color: Color(0xff002136)),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SignupScreen(),
                                ));
                              },
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.textScaleFactorOf(context) *
                                            16,
                                    color: Color(0xff139dc1)),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
