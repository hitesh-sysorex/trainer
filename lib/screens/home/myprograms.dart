import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:intl/intl.dart'; // for date format
import 'package:intl/date_symbol_data_local.dart'; // for other locales

class MyPrograms extends StatefulWidget {
  MyPrograms({Key? key}) : super(key: key);

  @override
  _MyProgramsState createState() => _MyProgramsState();
}

class _MyProgramsState extends State<MyPrograms> {
  var now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Your Next Session",
          style: TextStyle(
            letterSpacing: 1.3,
            color: Color(0xff49BFE6),
            fontWeight: FontWeight.w700,
            fontSize: MediaQuery.textScaleFactorOf(context) * 18,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Text(
          "Time",
          style:
              TextStyle(fontSize: MediaQuery.textScaleFactorOf(context) * 18),
        ),
        Row(
          children: [
            Expanded(flex: 1, child: Text("Date")),
            Expanded(
              flex: 4,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xff90D7E8),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.width * 0.025,
                      horizontal: MediaQuery.of(context).size.width * 0.025),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height * 0.008),
                        child: Text(
                          "Firming and Body Toning",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.textScaleFactorOf(context) * 16,
                              // letterSpacing: 1,
                              fontWeight: FontWeight.w800,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.008,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  right:
                                      MediaQuery.of(context).size.width * 0.02),
                              child: CircleAvatar(
                                radius:
                                    MediaQuery.of(context).size.width * 0.075,
                                backgroundImage: AssetImage(
                                  "assets/images/yourprofile.jpg",
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text("Name",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        fontSize: MediaQuery.textScaleFactorOf(
                                                context) *
                                            15,
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    "Addressssssss",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: MediaQuery.textScaleFactorOf(
                                              context) *
                                          15,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                SizedBox(
                                  height: 25,
                                  width: 60,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Start",
                                      style: TextStyle(
                                        fontSize: MediaQuery.textScaleFactorOf(
                                                context) *
                                            12,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color(0xff49BFE6).withOpacity(0.5),
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      primary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      // fixedSize: Size(20, 1)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        Text(
          "Upcoming Sessions",
          style: TextStyle(
            color: Colors.black45,
            fontWeight: FontWeight.w600,
            fontSize: MediaQuery.textScaleFactorOf(context) * 18,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.015,
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Color(0xffD1F4FD),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.width * 0.025,
                horizontal: MediaQuery.of(context).size.width * 0.025),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Firming and Body Toning",
                  style: TextStyle(
                    fontSize: MediaQuery.textScaleFactorOf(context) * 15,
                    color: Color(0xff003744),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black12,
                      radius: MediaQuery.of(context).size.width * 0.08,
                      child: CircleAvatar(
                        radius: MediaQuery.of(context).size.width * 0.065,
                        backgroundImage:
                            AssetImage("assets/images/yourprofile.jpg"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).size.height * 0.01),
                            child: Text(
                              "Sharnaya",
                              style: TextStyle(
                                color: Color(0xff003744),
                                fontSize:
                                    MediaQuery.textScaleFactorOf(context) * 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    MdiIcons.clockOutline,
                                    size: MediaQuery.of(context).size.width *
                                        0.05,
                                    color: Color(0xff003744).withOpacity(0.7),
                                  ),
                                  Text(DateFormat.jm().format(now))
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.2,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    MdiIcons.mapMarkerOutline,
                                    size: MediaQuery.of(context).size.width *
                                        0.05,
                                    color: Color(0xff003744).withOpacity(0.7),
                                  ),
                                  Text(DateFormat.jm().format(now))
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.007,
                          ),
                          Row(
                            children: [
                              Icon(
                                MdiIcons.calendarOutline,
                                size: MediaQuery.of(context).size.width * 0.05,
                                color: Color(0xff003744).withOpacity(0.7),
                              ),
                              Text(DateFormat.yMMMMd().format(now))
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
