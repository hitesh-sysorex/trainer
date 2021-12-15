import 'package:flutter/material.dart';
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
                  color: Color(0xff004163),
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
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Button("Continue", Home())),
          ],
        ),
      ),
    );
  }
}
