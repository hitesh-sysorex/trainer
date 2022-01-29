//signup krne k bad jo form fill krna hota h like fitness goal ky h etc vo ye h.

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trainer/models/fitnessgoalmodel.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:trainer/screens/auth/injuries.dart';
import 'package:trainer/screens/auth/loginpage.dart';

class FitnessGoal extends StatefulWidget {
  FitnessGoal({Key? key}) : super(key: key);

  @override
  _FitnessGoalState createState() => _FitnessGoalState();
}

class _FitnessGoalState extends State<FitnessGoal> {
  List<String> fitnessArray = [];
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xff1099d7), Color(0xff05b593)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  List<NotificationSetting> notifications = [
    NotificationSetting(
        title: 'Weight Loss', imagepath: 'assets/images/weight-loss.png'),
    NotificationSetting(
      title: 'Firming and toning',
      imagepath: 'assets/images/firming.png',
    ),
    NotificationSetting(
      title: 'Increase muscle strength',
      imagepath: 'assets/images/muscle.png',
    ),
    NotificationSetting(
        title: "Agility", imagepath: 'assets/images/running.png'),
    NotificationSetting(
        title: "Aerobic Exercise", imagepath: 'assets/images/exercise.png'),
    NotificationSetting(title: "Other", imagepath: 'assets/images/workout.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
            ),
            Positioned(
                bottom: 10,
                right: 10,
                child: GestureDetector(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.21,
                    // decoration: BoxDecoration(
                    //   gradient: LinearGradient(
                    //     begin: Alignment.topLeft,
                    //     end: Alignment.bottomRight,
                    //     stops: [0.0, 1.0],
                    //     colors: [Color(0xff1099d7), Color(0xff05b593)],
                    //   ),
                    //   borderRadius: BorderRadius.circular(15),
                    // ),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          userStorage.setItem('fitnessGoal', fitnessArray);
                          print(userStorage.getItem('fitnessGoal'));
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Injuries()));
                        },
                        child: Text(
                          "Next",
                          style: TextStyle(
                              // color: Color(0xff002136),
                              fontSize: 18,
                              color: Color(0xff006fb6),
                              // foreground: Paint()..shader = linearGradient,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                )
                // IconButton(
                //   onPressed: () {
                //     userStorage.setItem('fitnessGoal', fitnessArray);
                //     print(userStorage.getItem('fitnessGoal'));
                //     Navigator.of(context).push(
                //         MaterialPageRoute(builder: (context) => Injuries()));
                //   },
                //   icon: Container(
                //     child: Icon(
                //       MdiIcons.arrowRightBoldCircle,
                //       color: Color(0xff002136),
                //       //  colors: Paint()..shader = linearGradient,
                //       size: 50.w,
                //     ),
                //   ),
                // ),
                ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "What are your Fitness Goals?",
                    style: TextStyle(
                        // color: Color(0xff002136),
                        fontSize: 22,
                        foreground: Paint()..shader = linearGradient,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 1.0,
                    padding: const EdgeInsets.all(4.0),
                    shrinkWrap: true,
                    primary: false,
                    mainAxisSpacing: 15.w,
                    crossAxisSpacing: 24.h,
                    children: notifications.map(buildSingleCheckbox).toList(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSingleCheckbox(NotificationSetting notification) => buildCheckbox(
        notification: notification,
        onClicked: () {
          setState(() {
            fitnessArray.add(notification.title!);
            print(fitnessArray.length);
            final newValue = !notification.value;
            notification.value = newValue;
          });
        },
      );
  Widget buildCheckbox({
    @required NotificationSetting? notification,
    @required VoidCallback? onClicked,
  }) =>
      SizedBox(
        // height: MediaQuery.of(context).size.height * 0.2,
        // width: MediaQuery.of(context).size.width * 0.3,
        child: GestureDetector(
          onTap: onClicked,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: notification!.value ? 6 : 0,
            color: notification.value ? Color(0xffdbf1ff) : Color(0xffF2F2F2),
            borderOnForeground: false,
            child: Column(
              children: [
                Image.asset(
                  notification.imagepath!,
                  height: MediaQuery.of(context).size.height * 0.112,
                  width: 100,
                  fit: BoxFit.fitHeight,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: 8.0, top: 4, bottom: 4),
                          child: Text(
                            notification.title!,
                            style: TextStyle(
                                color: Color(0xff002136),
                                //  Color(0xff1099d7),
                                // Theme.of(context).primaryColor,
                                fontSize:
                                    MediaQuery.textScaleFactorOf(context) * 16),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Checkbox(
                          shape: CircleBorder(),
                          value: notification.value,
                          activeColor: Color(0xff006fb6),
                          onChanged: (value) => onClicked!(),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
