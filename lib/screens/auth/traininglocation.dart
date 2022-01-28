import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:trainer/models/bookform.dart';
import 'package:trainer/screens/auth/loginpage.dart';
import 'package:trainer/screens/home/home.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  List<BookFormModel> place = [
    BookFormModel(title: "Home"),
    BookFormModel(title: "Park"),
    BookFormModel(title: "Appartment Gym"),
    BookFormModel(title: "Outdoor"),
    BookFormModel(title: "Other"),
  ];

  String location = 'Null, Press Button';
  String Address = 'search';
  Future<Position> _getGeoLocationPosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Future<void> GetAddressFromLatLong(Position position) async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    // print(placemarks);
    Placemark place = placemarks[0];
    Address =
        '${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
    userStorage.setItem('address', Address);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Text(
                    'Where would you like to train?',
                    style: TextStyle(
                        fontSize: MediaQuery.textScaleFactorOf(context) * 22,
                        color: Color(0xff004163),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Container(
                    // height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Card(
                      elevation: 0,
                      color: Color(0xffF8F8F8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 2.0,
                              vertical:
                                  MediaQuery.of(context).size.height * 0.02),
                          child: Text(
                            '${Address}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                backgroundColor: Color(0xffF8F8F8),
                                fontSize:
                                    MediaQuery.textScaleFactorOf(context) * 16),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      Position position = await _getGeoLocationPosition();
                      location =
                          'Lat: ${position.latitude} , Long: ${position.longitude}';
                      GetAddressFromLatLong(position);
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor),
                    child: Text('Get Location'),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Select your place",
                      style: TextStyle(
                        fontSize: MediaQuery.textScaleFactorOf(context) * 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Column(children: place.map(buildSingleCheckbox).toList()),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Theme.of(context).primaryColor),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text("You Are Ready"),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSingleCheckbox(BookFormModel place) => buildCheckbox(
        place: place,
        onClicked: () {
          setState(() {
            final newValue = !place.value;
            place.value = newValue;
          });
        },
      );
  Widget buildCheckbox({
    @required BookFormModel? place,
    @required VoidCallback? onClicked,
  }) =>
      Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.01),
        child: GestureDetector(
          onTap: onClicked,
          child: Card(
            elevation: place!.value ? 1 : 0,
            color: Color(0xffFCFCFC),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(place.title!),
                  ),
                ),
                Expanded(
                  child: Checkbox(
                    activeColor: Theme.of(context).primaryColor,
                    shape: CircleBorder(),
                    value: place.value,
                    onChanged: (value) => onClicked!(),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
