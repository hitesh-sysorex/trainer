import 'package:meta/meta.dart';

class NotificationSetting {
  String? imagepath;
  String? title;
  bool value;

  NotificationSetting({
    @required this.title,
    @required this.imagepath,
    this.value = false,
  });
}
