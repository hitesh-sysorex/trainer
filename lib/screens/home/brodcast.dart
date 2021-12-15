import 'package:flutter/material.dart';

class Brodcast extends StatefulWidget {
  Brodcast({Key? key}) : super(key: key);

  @override
  _BrodcastState createState() => _BrodcastState();
}

class _BrodcastState extends State<Brodcast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/brodcast.png",
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height * 0.38,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  "Click 'broadcast' to start searching trainer for you.",
                  style: TextStyle(
                      // letterSpacing: 1.1,
                      fontSize: MediaQuery.textScaleFactorOf(context) * 21,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
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
                    fixedSize: Size(MediaQuery.of(context).size.width * 0.65,
                        MediaQuery.of(context).size.height * 0.07)),
                child: Text(
                  "Brodcast",
                  style: TextStyle(
                    fontSize: MediaQuery.textScaleFactorOf(context) * 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
