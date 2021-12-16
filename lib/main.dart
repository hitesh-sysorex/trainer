import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trainer/screens/home/bookform1.dart';
import 'package:trainer/screens/home/brodcast.dart';
import 'package:trainer/screens/auth/continuepage.dart';
import 'package:trainer/screens/auth/fitnessgoalcheckbox.dart';
import 'package:trainer/screens/home/home.dart';
import 'package:trainer/screens/auth/injuries.dart';
import 'package:trainer/screens/auth/loginpage.dart';
import 'package:trainer/screens/auth/mainscreen.dart';
// import 'package:trainer/screen.dart/mainscreen.dart';
import 'package:trainer/screens/auth/signup.dart';
import 'package:trainer/screens/splash.dart';
import 'package:trainer/screens/trainerprofile.dart';
import 'package:trainer/screens/traininglocation.dart';
import 'package:trainer/screens/yourprofile.dart';

// @dart=2.9
void main() {
  runApp(const MyApp());
}

const Color bigTextColor = Color(0xff003744);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: () => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Trainer App',
              theme: ThemeData(
                scaffoldBackgroundColor: Colors.white,
                primaryColor: const Color(0xff0773AA),
                textTheme: const TextTheme(
                  headline1: TextStyle(
                    fontSize: 26.0,
                    color: Color(0xff003744),
                    fontWeight: FontWeight.bold,
                  ),
                  headline4: TextStyle(
                    fontSize: 22.0,
                    color: Color(0xff003744),
                    fontWeight: FontWeight.w600,
                  ),
                  headline3: TextStyle(
                    fontSize: 16,
                    color: Color(0xff003744),
                    fontWeight: FontWeight.w600,
                  ),
                  headline2: TextStyle(
                      fontSize: 18,
                      color: Color(0xff003744),
                      fontStyle: FontStyle.normal),
                  bodyText2: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ),
              home: SplashScreen(),
            ),
        designSize: const Size(428, 971));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return FitnessGoal();
  }
}
