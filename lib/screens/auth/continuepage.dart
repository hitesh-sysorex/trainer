import 'package:flutter/material.dart';
import 'package:trainer/screens/auth/fitnessgoalcheckbox.dart';
import 'package:trainer/screens/home/home.dart';
import 'package:trainer/widgets/button.dart';

class ContinuePage extends StatefulWidget {
  ContinuePage({Key? key}) : super(key: key);

  @override
  _ContinuePageState createState() => _ContinuePageState();
}

class _ContinuePageState extends State<ContinuePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),

            Text(
              "Help Us To Know You Better",
              style: TextStyle(
                  fontSize: MediaQuery.textScaleFactorOf(context) * 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff002136),
                  letterSpacing: 0.8),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Image.asset(
              "assets/images/continue_image.png",
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            // SizedBox(
            //     width: MediaQuery.of(context).size.width * 0.8,
            //     child: Button("Continue", FitnessGoal())),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Container(
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
                      fixedSize: Size(
                          MediaQuery.of(context).size.width -
                              MediaQuery.of(context).size.width * 0.08,
                          MediaQuery.of(context).size.height * 0.07)),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => FitnessGoal()));
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: MediaQuery.of(context).textScaleFactor * 19,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
