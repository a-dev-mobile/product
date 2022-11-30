import 'package:flutter/material.dart';
import 'package:product/l10n/l10n.dart';

class StringUtils {
  static String getCorrectMoneyFormat(String v) {
    if (v.isEmpty) return '0';

    final cleanV = v.replaceAll(' ', '').replaceAll('₽', '');

    final array = cleanV.split('.');
    final last3 = v.substring(v.length - 3);

    if (cleanV == '0' || cleanV == '0.0') return '0';
    if (array.length == 2 &&
        array.first.length <= 3 &&
        (array.last == '0' || array.last == '00')) {
      return array.first;
    }

    if (array.isNotEmpty && array.first.length <= 3) return v;

    if (v.length == 3) return v;

    if (v.length == 4) return '${v[0]} $last3';

    if (v.length == 5) return '${v[0]}${v[1]} $last3';

    if (v.length > 5) {
      final a0 = array.first;
      var v1 = '';
      // ignore: prefer-conditional-expressions
      if (a0.length == 4) {
        v1 = '${a0[0]} ${a0.substring(a0.length - 3)}';
      } else {
        v1 = '${a0[0]}${a0[1]} ${a0.substring(a0.length - 3)}';
      }
      final v2 = array.last == '0' || array.last == '00' ? '' : array.last;

      return v2.isEmpty ? v1 : '$v1.$v2';
    }

    return v;
  }

  /// добовляем окончание к числу  >>> дней дня
  static String getDescDay(String value, BuildContext context) {
    final l = context.l10n;
    if (value == '21' || value == '1' || value == '31') {
      return l.days2;
    } else if (value == '22' ||
        value == '23' ||
        value == '24' ||
        value == '2' ||
        value == '3' ||
        value == '4') {
      return l.days3;
    } else {
      return l.days1;
    }
  }

  static String removeAllExceptNumbers(String source) {
    return source.replaceAll(RegExp('[^0-9]'), '');
  }

  static String beautifyCardNumber(String number) {
    return number
        .replaceAll('*', 'X')
        .replaceAllMapped(RegExp('.{4}'), (match) => '${match.group(0)} ');
  }

  static String removeDecimalZeroFormat(double number) {
    return number.toStringAsFixed(number.truncateToDouble() == number ? 0 : 1);
  }

  /// Returns phone number in '+7 912 456-78-90' format
  ///
  /// [phone] - unformatted phone like '9124567890 or 791234567890'
  ///
  /// [addPrefix] - if set to true '+7' is added in the beginning of the string
  ///
  /// [whitespace] - symbol to use as empty delimiter (1 2), NBSP by default
  static String? formatPhoneNumber(
    String phone, {
    bool addPrefix = true,
    String whitespace = '\u{00A0}',
  }) {
    const PHONE_NUMBER_LENGTH = 10;

    var correction = 0;

    /// used to correct substring positions for longer numbers

    if (phone.length == PHONE_NUMBER_LENGTH + 1) {
      /// 791234567890 (11 digits)
      correction = 1;
    } else if (phone.length == PHONE_NUMBER_LENGTH) {
      /// 10 digits, do nothing
    } else {
      /// Unable to format such number
      return null;
    }

    // \u{00A0} is NBSP, helps to avoid line breaks inside the number
    return '${addPrefix ? '+7$whitespace' : ''}${phone.substring(0 + correction, 3 + correction)}$whitespace${phone.substring(3 + correction, 6 + correction)}-${phone.substring(6 + correction, 8 + correction)}-${phone.substring(8 + correction, 10 + correction)}';
  }

  /// Validates and returns number in 9123456789 format
  ///
  /// [phone] - formatted phone number like +7 (912) 345-67-89
  ///
  /// Returns null if validation failed
  static String? parsePhoneNumber(String? phone) {
    // var phone = phone.replaceAll(RegExp(r'[^0-9+]'), '');
    if (phone == null) {
      return null;
    }

    if (phone.length <= 7) {
      return null;
    }

    // добавил условия в зависимости от различных форматов приходящего номера из телеф. книги
    phone = phone
        .replaceAll(')', '')
        .replaceAll('(', '')
        .replaceAll(' ', '')
        .replaceAll('-', '');
    if (phone.length == 10 && phone[0] == '9') phone = '7$phone';

    if (phone.substring(0, 3) == '+77') {
      // Kazakhstan numbers are not valid
      return null;
    } else if (phone.substring(0, 2) == '+7') {
      return phone.substring(2);
    } else if (phone.substring(0, 1) == '8') {
      return phone.substring(1);
    } else if (phone[0] == '7') {
      return phone.substring(1);
    } else if (phone[0] == '+') {
      return null;
    } else {
      return null;
    }
  }
}
