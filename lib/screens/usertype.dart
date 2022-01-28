import 'package:flutter/material.dart';
import 'package:trainer/screens/auth/signup.dart';
import 'package:trainer/screens/auth/trainersignup.dart';

class UserType extends StatefulWidget {
  UserType({Key? key}) : super(key: key);

  @override
  _UserTypeState createState() => _UserTypeState();
}

class _UserTypeState extends State<UserType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Text("Tell Us Who You Are",
                    style: TextStyle(
                        color: Color(0xff002136),
                        fontSize: 26,
                        fontWeight: FontWeight.w800)),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
                SizedBox(
                  // height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        shadowColor: Color(0xff1099d7),
                        elevation: 1,
                        primary: Colors.white,
                        onPrimary: Color(0xff1099d7)),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignupScreen()));
                    },
                    child: Column(
                      children: [
                        Image.asset("assets/images/cc.png",
                            fit: BoxFit.fill,
                            height: MediaQuery.of(context).size.width * 0.5,
                            width: MediaQuery.of(context).size.width * 0.6),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text("Client", style: TextStyle(fontSize: 20)),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                SizedBox(
                  // height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 1,
                        shadowColor: Color(0xff1099d7),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: Colors.white,
                        onPrimary: Color(0xff1099d7)),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TrainerSignupScreen()));
                    },
                    child: Column(
                      children: [
                        Image.asset("assets/images/trainer.png",
                            fit: BoxFit.fill,
                            height: MediaQuery.of(context).size.width * 0.5,
                            width: MediaQuery.of(context).size.width * 0.6),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child:
                              Text("Trainer", style: TextStyle(fontSize: 20)),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
