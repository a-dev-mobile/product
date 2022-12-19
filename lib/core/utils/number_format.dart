import 'package:intl/intl.dart';

/// MyNumberFormat Singleton class
class MyNumberFormat {
  factory MyNumberFormat() => _internalSingleton;
  MyNumberFormat._internal();
  static final MyNumberFormat _internalSingleton = MyNumberFormat._internal();

  static final NumberFormat _formatterWeight = NumberFormat('#,###');
  static final NumberFormat _formatterNutrient = NumberFormat('#,###.00');

  static String weight(int value) {
    return _formatterWeight.format(value).replaceAll(',', ' ');
  }

  static String nutrient(double value) {
    return _formatterNutrient
        .format(value)
        .replaceAll(',', ' ')
        .replaceAll(RegExp('^[.]'), '0.')
        .replaceAll('.00', '')
        .replaceAll('.0', '')
        .replaceAll('.10', '.1')
        .replaceAll('.20', '.2')
        .replaceAll('.30', '.3')
        .replaceAll('.40', '.4')
        .replaceAll('.50', '.5')
        .replaceAll('.60', '.6')
        .replaceAll('.70', '.7')
        .replaceAll('.80', '.8')
        .replaceAll('.90', '.9');
  }
}
