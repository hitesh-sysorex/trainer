//signup krne k bad jo form fill krna hota h like fitness goal ky h etc vo ye h.

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trainer/models/fitnessgoalmodel.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:trainer/screens/auth/injuries.dart';

class FitnessGoal extends StatefulWidget {
  FitnessGoal({Key? key}) : super(key: key);

  @override
  _FitnessGoalState createState() => _FitnessGoalState();
}

class _FitnessGoalState extends State<FitnessGoal> {
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
              bottom: 20,
              right: 20,
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Injuries()));
                  },
                  icon: Icon(
                    MdiIcons.arrowRightBoldCircle,
                    color: Theme.of(context).primaryColor,
                    size: 50.w,
                  )),
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
                    style: Theme.of(context).textTheme.headline4,
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
                    mainAxisSpacing: 20.w,
                    crossAxisSpacing: 34.h,
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
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.3,
        child: GestureDetector(
          onTap: onClicked,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: notification!.value ? 6 : 0,
            color: notification.value ? Color(0xffD5EDF9) : Color(0xffF2F2F2),
            borderOnForeground: false,
            child: Column(
              children: [
                Image.asset(
                  notification.imagepath!,
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: 100,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Text(
                          notification.title!,
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 20.sp),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Checkbox(
                          shape: CircleBorder(),
                          value: notification.value,
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
