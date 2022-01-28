import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trainer/authentication.dart';
import 'package:trainer/screens/auth/fitnessgoalcheckbox.dart';
import 'package:trainer/screens/auth/loginpage.dart';
import 'package:trainer/screens/auth/trainerlogin.dart';
import 'package:trainer/screens/home/home.dart';
import 'package:trainer/widgets/button.dart';
import 'package:trainer/widgets/textformfield.dart';

class TrainerSignupScreen extends StatefulWidget {
  const TrainerSignupScreen({Key? key}) : super(key: key);

  @override
  _TrainerSignupScreenState createState() => _TrainerSignupScreenState();
}

class _TrainerSignupScreenState extends State<TrainerSignupScreen> {
  final _formkey = GlobalKey();
  FocusNode focusNode = FocusNode();
  final TextEditingController username = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController gender = TextEditingController();
  final TextEditingController age = TextEditingController();
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
              // width: size.width,
              // fit: BoxFit.fill,
              height: size.height * 0.3,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.08,
                // vertical: size.width * 0.05
              ),
              child: Column(
                children: [
                  TextField(
                    controller: username,
                    // autofocus: true,
                    cursorHeight: 26,
                    style: TextStyle(
                        color: Color(0xff002136),
                        fontSize: MediaQuery.textScaleFactorOf(context) * 18),
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                            color: Color(0xff002136),
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 17),
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
                        fillColor: Color(0xff139dc1).withOpacity(0.2)),
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
                        labelText: "Password",
                        labelStyle: TextStyle(
                            color: Color(0xff002136),
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 17),
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
                        fillColor: Color(0xff139dc1).withOpacity(0.2)),
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
                        labelStyle: TextStyle(
                            color: Color(0xff002136),
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 17),
                        labelText: "Password",
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
                        fillColor: Color(0xff139dc1).withOpacity(0.2)),
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
                        labelStyle: TextStyle(
                            color: Color(0xff002136),
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 17),
                        labelText: "Gender",
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
                        fillColor: Color(0xff139dc1).withOpacity(0.2)),
                  ),
                  SizedBox(
                    height: size.height * 0.025,
                  ),
                  TextField(
                    controller: age,
                    // autofocus: true,
                    cursorHeight: 26,
                    style: TextStyle(
                        color: Color(0xff002136),
                        fontSize: MediaQuery.textScaleFactorOf(context) * 18),
                    cursorColor: Color(0xff002136),
                    decoration: InputDecoration(
                        labelStyle: TextStyle(
                            color: Color(0xff002136),
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 17),
                        labelText: "Age",
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
                        fillColor: Color(0xff139dc1).withOpacity(0.2)),
                  ),
                  SizedBox(
                    height: size.height * 0.025,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff45B865),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      fixedSize: Size(
                          size.width - size.width * 0.08, size.height * 0.07),
                    ),
                    onPressed: () {
                      signup(username.text, email.text, password.text, context);
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: MediaQuery.of(context).textScaleFactor * 19,
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
                                builder: (BuildContext context) =>
                                    TrainerLoginPage(),
                              ));
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: Color(0xff139dc1),
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
