import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trainer/screens/auth/policies.dart';
import 'package:trainer/screens/auth/fitnessgoalcheckbox.dart';
// import 'package:trainer/screens/auth/fitnessnew.dart';
import 'package:trainer/screens/auth/injuries.dart';
import 'package:trainer/screens/home/home.dart';
import 'package:trainer/screens/auth/loginpage.dart';
import 'package:trainer/screens/splash.dart';
import 'package:trainer/screens/usertype.dart';

// @dart=2.9
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
                    color: Color(0xff002136),
                    fontWeight: FontWeight.bold,
                  ),
                  headline4: TextStyle(
                    fontSize: 22.0,
                    color: Color(0xff139dc1),
                    // Color(0xff002136),
                    fontWeight: FontWeight.w600,
                  ),
                  headline3: TextStyle(
                    fontSize: 16,
                    color: Color(0xff002136),
                    fontWeight: FontWeight.w600,
                  ),
                  headline2: TextStyle(
                      fontSize: 18,
                      color: Color(0xff002136),
                      fontStyle: FontStyle.normal),
                  bodyText2: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ),
              home:
                  // Injuries(),
                  // UserType(),
                  // FitnessGoal(),
                  SplashScreen(),
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
    if (FirebaseAuth.instance.currentUser?.uid == null) {
      return LoginPage();
    } else {
      return Home();
    }
  }
}
