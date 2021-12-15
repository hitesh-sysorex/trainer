//model jo book a yoga trainer ka
import 'package:meta/meta.dart';

class BookFormModel {
  String? title;
  bool value;
  BookFormModel({
    @required this.title,
    this.value = false,
  });
}
