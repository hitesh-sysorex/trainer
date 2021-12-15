import 'package:flutter/material.dart';

class TrainerProfile extends StatefulWidget {
  TrainerProfile({Key? key}) : super(key: key);

  @override
  _TrainerProfileState createState() => _TrainerProfileState();
}

class _TrainerProfileState extends State<TrainerProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/profile.jpg",
                fit: BoxFit.cover,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.6,
              ),
              Card(
                elevation: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.width * 0.03,
                      horizontal: MediaQuery.of(context).size.width * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Chat",
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.textScaleFactorOf(context) *
                                          14,
                                  // fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: Color(0xff49BFE6),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                // fixedSize: Size(20, 1)
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.1,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Send Request",
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.textScaleFactorOf(context) *
                                          14,
                                  // fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: Color(0xff49BFE6),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                // fixedSize: Size(20, 1)
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Text(
                        "Trainer Name",
                        style: TextStyle(
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 22,
                            letterSpacing: 0.7,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015,
                      ),
                      Text(
                        "Activity performed by trainer",
                        style: TextStyle(
                          fontSize: MediaQuery.textScaleFactorOf(context) * 16,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "State",
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.textScaleFactorOf(context) * 16,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03,
                          ),
                          Text(
                            "pincode",
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.textScaleFactorOf(context) * 16,
                            ),
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                        height: 25,
                        thickness: 0.2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Color(0xffEEF9FF),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.045,
                                  vertical: MediaQuery.of(context).size.height *
                                      0.02),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 4.0),
                                    child: Text(
                                      "Gender",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  Text(
                                    "Female",
                                    style: TextStyle(
                                        fontSize: MediaQuery.textScaleFactorOf(
                                                context) *
                                            20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Color(0xffEEF9FF),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.1,
                                  vertical: MediaQuery.of(context).size.height *
                                      0.02),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 4.0),
                                    child: Text(
                                      "Age",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  Text(
                                    "30",
                                    style: TextStyle(
                                        fontSize: MediaQuery.textScaleFactorOf(
                                                context) *
                                            20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Text(
                        "Description",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 16),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 8.0,
                            bottom: MediaQuery.of(context).size.height * 0.05),
                        child: Text(
                          "I am a athlete from 10 years competing at international level and a trainer for core conditioning from past 4 years. ",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.textScaleFactorOf(context) * 14,
                              letterSpacing: 0.5),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height * 0.01),
                        child: Text(
                          "Time Slots Available",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize:
                                  MediaQuery.textScaleFactorOf(context) * 16),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: double.infinity,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          color: Color(0xffBEEAFF),
                          child: Center(
                            child: Text("10:10"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
