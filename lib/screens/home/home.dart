import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:motion_tab_bar/MotionTabController.dart';
// import 'package:motion_tab_bar/motiontabbar.dart';
import 'package:trainer/models/categories.dart';
import 'package:trainer/models/nearbyTrainers.dart';
import 'package:trainer/screens/home/bookform1.dart';
import 'package:trainer/screens/trainerprofile.dart';
import 'package:trainer/screens/yourprofile.dart';
import 'package:trainer/screens/home/myactivity.dart';
import 'package:trainer/screens/home/myprograms.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

List<Categories> category = [
  Categories("Yoga", "assets/images/yoga.png", color: Color(0xff00B9FF)),
  Categories("Yoga", "assets/images/yoga.png", color: Color(0xff004DE7)),
  Categories("Yoga", "assets/images/yoga.png", color: Color(0xff00B9FF)),
  Categories("Meditation", "assets/images/meditation.png",
      color: Color(0xff0A7DE1))
];
List<Trainers> trainer = [
  Trainers("Charlotte", "Cardio", "dubai", "123456"),
  Trainers("Charlotte", "Cardio", "dubai", "123456"),
];

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  int currentindex = 0;
  bool flag = true;
  final screens = [YourProfile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(iconData: Icons.home, title: "Home"),
          TabData(iconData: Icons.account_circle, title: "Account"),
          TabData(iconData: Icons.message, title: "Message")
        ],
        onTabChangedListener: (position) {
          setState(() {
            currentindex = position;
          });
        },
      ),
      body: _getPage(currentindex),
    );
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Home",
                    style: TextStyle(
                        fontSize: MediaQuery.textScaleFactorOf(context) * 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Categories",
                    style: TextStyle(
                        color: Color(0xffA8A8A8),
                        fontSize: MediaQuery.of(context).textScaleFactor * 19,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.035,
                ),
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  primary: false,
                  mainAxisSpacing: 15.h,
                  crossAxisSpacing: 5.w,
                  children: category.map(cateogrycard).toList(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.038,
                      bottom: 14.h),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Text(
                        "Nearby Personal Trainers",
                        style: TextStyle(
                            color: Color(0xffA8A8A8),
                            fontSize:
                                MediaQuery.of(context).textScaleFactor * 19,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: trainer.map(trainercard).toList(),
                ),
              ],
            ),
          ),
        );
      case 1:
        return YourProfile();
      default:
        return Center(
          child: Text("Message Page"),
        );
    }
  }

  Widget trainercard(Trainers tran) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => TrainerProfile(),
          ));
        },
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Color(0xff61C2E0).withOpacity(0.45),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tran.name,
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).textScaleFactor * 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text(
                        tran.activity,
                        softWrap: true,
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).textScaleFactor * 15),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.012,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.location_on),
                          Text(tran.country),
                          SizedBox(
                            width: MediaQuery.of(context).textScaleFactor * 15,
                          ),
                          Text(tran.pincode)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Image.asset(
                    "assets/images/charlotte.jpg",
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width * 0.17,
                    height: MediaQuery.of(context).size.height * 0.18,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget cateogrycard(Categories cat) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.w),
      child: SizedBox(
        // height: MediaQuery.of(context).size.height * 0.12,
        //  width: MediaQuery.of(context).size.width * 0.015,
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => BookForm1(),
            ));
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            color: cat.color!.withOpacity(0.42),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 4.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    flex: 2,
                    child: Image.asset(
                      cat.imagepath,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.012,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: Text(
                      cat.name,
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).textScaleFactor * 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
