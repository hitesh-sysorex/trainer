import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trainer/models/fitnessgoalmodel.dart';
import 'package:material_design_icons_flutter/icon_map.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:trainer/screens/auth/fitnessgoalcheckbox.dart';
import 'package:trainer/screens/auth/loginpage.dart';
import 'package:trainer/screens/traininglocation.dart';

class Injuries extends StatefulWidget {
  Injuries({Key? key}) : super(key: key);

  @override
  _InjuriesState createState() => _InjuriesState();
}

class _InjuriesState extends State<Injuries> {
  List<String> injuriesArray = [];
  List<NotificationSetting> notifications = [
    NotificationSetting(
        title: "no I don't have any medical conditions",
        imagepath: "assets/images/healthy.png"),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Do you have any injuries or pre-existing medical conditions?",
                      style: Theme.of(context).textTheme.headline2,
                      textAlign: TextAlign.center,
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
                    height: MediaQuery.of(context).size.height * 0.1,
                  )
                ],
              ),
              Positioned(
                bottom: 20,
                left: 10,
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FitnessGoal()));
                    },
                    icon: Icon(
                      MdiIcons.arrowLeftBoldCircle,
                      color: Theme.of(context).primaryColor,
                      size: 50.w,
                    )),
              ),
              Positioned(
                bottom: 20,
                right: 20,
                child: IconButton(
                    onPressed: () {
                      userStorage.setItem('injuries', injuriesArray);
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Location()));
                    },
                    icon: Icon(
                      MdiIcons.arrowRightBoldCircle,
                      color: Theme.of(context).primaryColor,
                      size: 50.w,
                    )),
              ),
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
            color: notification.value ? Color(0xffD5EDF9) : Color(0xffF2F2F2),
            borderOnForeground: false,
            child: Column(
              children: [
                Image.asset(
                  notification.imagepath!,
                  height: 100,
                  width: 100,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
