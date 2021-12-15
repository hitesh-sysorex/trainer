import 'package:meta/meta.dart';

class Userdata {
  String? username, email, password, address;
  List? fitnessgoal = [];
  List? injuries = [];
  List? location = [];
  Userdata(
      {this.username,
      this.email,
      this.fitnessgoal,
      this.injuries,
      this.address,
      this.location,
      this.password});
}
