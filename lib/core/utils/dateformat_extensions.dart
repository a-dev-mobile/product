import 'package:intl/intl.dart';

extension DateFormatExtensions on DateFormat {
  String prettify(String data) {
    return format(DateTime.parse(data));
  }
}
