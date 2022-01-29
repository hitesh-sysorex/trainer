import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trainer/authentication.dart';
import 'package:trainer/screens/auth/fitnessgoalcheckbox.dart';
import 'package:trainer/screens/auth/loginpage.dart';
import 'package:trainer/screens/home/home.dart';
import 'package:trainer/widgets/button.dart';
import 'package:trainer/widgets/textformfield.dart';

import 'continuepage.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formkey = GlobalKey();
  FocusNode focusNode = FocusNode();
  final TextEditingController firstname = TextEditingController();
  final TextEditingController lastname = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.02,
            ),
            Image.asset(
              "assets/images/g.gif",
              height: size.height * 0.4,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.08,
                // vertical: size.width * 0.05
              ),
              child: Column(
                children: [
                  TextField(
                    controller: firstname,
                    // autofocus: true,
                    cursorHeight: 26,
                    style: TextStyle(
                        color: Color(0xff002136),
                        fontSize: MediaQuery.textScaleFactorOf(context) * 18),
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(
                            color: Color(0xff002136),
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 17),
                        hintText: "First Name",
                        contentPadding: EdgeInsets.symmetric(vertical: 18),
                        prefixIcon: Icon(
                          Icons.account_circle_rounded,
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
                        fillColor: Color(0xff139dc1).withOpacity(0.15)),
                  ),
                  SizedBox(
                    height: size.height * 0.025,
                  ),
                  TextField(
                    controller: lastname,
                    // autofocus: true,
                    cursorHeight: 26,
                    style: TextStyle(
                        color: Color(0xff002136),
                        fontSize: MediaQuery.textScaleFactorOf(context) * 18),
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(
                            color: Color(0xff002136),
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 17),
                        hintText: "Last Name",
                        // label: Text(
                        //   "User Name",
                        //   style: TextStyle(
                        //       color: Color(0xff002136),
                        //       fontSize:
                        //           MediaQuery.textScaleFactorOf(context) * 17),
                        // ),
                        contentPadding: EdgeInsets.symmetric(vertical: 18),
                        prefixIcon: Icon(
                          Icons.account_circle_rounded,
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
                        fillColor: Color(0xff139dc1).withOpacity(0.15)),
                  ),
                  SizedBox(
                    height: size.height * 0.025,
                  ),
                  TextField(
                    controller: email,
                    // autofocus: true,
                    cursorHeight: 26,
                    style: TextStyle(
                        color: Color(0xff002136),
                        fontSize: MediaQuery.textScaleFactorOf(context) * 18),
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: InputDecoration(
                        // label: Text(
                        //   "Email",
                        //   style: TextStyle(
                        //       color: Color(0xff002136),
                        //       fontSize:
                        //           MediaQuery.textScaleFactorOf(context) * 17),
                        // ),
                        hintText: "Email",
                        hintStyle: TextStyle(
                            color: Color(0xff002136),
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 17),
                        contentPadding: EdgeInsets.symmetric(vertical: 18),
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
                        fillColor: Color(0xff139dc1).withOpacity(0.15)),
                  ),
                  SizedBox(
                    height: size.height * 0.025,
                  ),
                  TextField(
                    controller: password,
                    // autofocus: true,
                    cursorHeight: 26,
                    style: TextStyle(
                        color: Color(0xff002136),
                        fontSize: MediaQuery.textScaleFactorOf(context) * 18),
                    cursorColor: Color(0xff002136),
                    decoration: InputDecoration(
                        // label: Text(
                        //   "Password",
                        //   style: TextStyle(
                        //       color: Color(0xff002136),
                        //       fontSize:
                        //           MediaQuery.textScaleFactorOf(context) * 17),
                        // ),
                        hintStyle: TextStyle(
                            color: Color(0xff002136),
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 17),
                        hintText: "Password",
                        contentPadding: EdgeInsets.symmetric(vertical: 18),
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
                        fillColor: Color(0xff139dc1).withOpacity(0.15)),
                  ),
                  SizedBox(
                    height: size.height * 0.025,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                        colors: [Color(0xff1099d7), Color(0xff05b593)],
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          //  Color(0xff45B865),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          fixedSize: Size(size.width - size.width * 0.08,
                              size.height * 0.07)),
                      onPressed: () {
                        signup(
                            firstname.text, email.text, password.text, context);
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => ContinuePage()));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: MediaQuery.of(context).textScaleFactor * 19,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.025,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already Have an Account?",
                          style: TextStyle(
                              color: Color(0xff002136),
                              fontSize:
                                  MediaQuery.of(context).textScaleFactor * 15)),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) => LoginPage(),
                              ));
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: Color(0xff1099d7),
                            // Color(0xff139dc1),
                            fontSize:
                                MediaQuery.of(context).textScaleFactor * 17,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
