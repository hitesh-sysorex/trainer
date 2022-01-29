import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trainer/models/fitnessgoalmodel.dart';
import 'package:material_design_icons_flutter/icon_map.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:trainer/screens/auth/policies.dart';
import 'package:trainer/screens/auth/fitnessgoalcheckbox.dart';
import 'package:trainer/screens/auth/loginpage.dart';
import 'package:trainer/screens/home/home.dart';
// import 'package:trainer/screens/traininglocation.dart';

class Injuries extends StatefulWidget {
  Injuries({Key? key}) : super(key: key);

  @override
  _InjuriesState createState() => _InjuriesState();
}

class _InjuriesState extends State<Injuries> {
  List<String> injuriesArray = [];
  List<NotificationSetting> notifications = [
    NotificationSetting(
        title: "no problems", imagepath: "assets/images/healthy.png"),
    NotificationSetting(
        title: "Asthama", imagepath: 'assets/images/asthma.png'),
    NotificationSetting(
        title: "Diabetes", imagepath: 'assets/images/diabetes.png'),
    NotificationSetting(
        title: "Back problems", imagepath: 'assets/images/back-pain.png'),
    NotificationSetting(
        title: "Spine Problems", imagepath: 'assets/images/spine.png'),
    NotificationSetting(title: "Other", imagepath: 'assets/images/other.png'),
  ];

  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xff1099d7), Color(0xff05b593)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.50),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Do you have any injuries or pre-existing medical conditions?",
                    style: TextStyle(
                        // color: Color(0xff002136),
                        foreground: Paint()..shader = linearGradient,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0.w),
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  padding: const EdgeInsets.all(4.0),
                  shrinkWrap: true,
                  primary: false,
                  mainAxisSpacing: 24.w,
                  crossAxisSpacing: 34.h,
                  children: notifications.map(buildSingleCheckbox).toList(),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 8.0, right: 16, bottom: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => FitnessGoal()));
                        },
                        child: Text(
                          "Back",
                          style: TextStyle(
                              // color: Color(0xff002136),
                              fontSize: 18,
                              color: Color(0xff006fb6),
                              // foreground: Paint()..shader = linearGradient,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          userStorage.setItem('injuries', injuriesArray);
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Check()));
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
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSingleCheckbox(NotificationSetting notification) => buildCheckbox(
        notification: notification,
        onClicked: () {
          setState(() {
            injuriesArray.add(notification.title!);
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
        width: MediaQuery.of(context).size.width * 0.4,
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
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: 100,
                  fit: BoxFit.fitHeight,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, top: 4, bottom: 4),
                          child: Text(
                            notification.title!,
                            style: TextStyle(
                                color: Color(0xff002136),
                                // Theme.of(context).primaryColor,
                                fontSize: 20.sp),
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
