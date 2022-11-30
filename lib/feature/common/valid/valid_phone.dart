// ignore_for_file: avoid-nested-conditional-expressions

import 'package:formz/formz.dart';

class ValidPhone extends FormzInput<String, ValidPhoneError> {
  const ValidPhone.pure({this.externalError}) : super.pure('');
  const ValidPhone.dirty({
    this.externalError,
    String value = '',
  }) : super.dirty(value);

  final ValidPhoneError? externalError;
  @override
  ValidPhoneError? validator(String value) {
    if (externalError != null) {
      return externalError;
    }

    return value.isEmpty
        ? ValidPhoneError.isEmpty
        : !value.startsWith('9')
            ? ValidPhoneError.numberStart9
            : value.length < 2
                ? ValidPhoneError.leght1
                : value.length < 3
                    ? ValidPhoneError.leght2
                    : value.length < 4
                        ? ValidPhoneError.leght3
                        : value.length < 5
                            ? ValidPhoneError.leght4
                            : value.length < 6
                                ? ValidPhoneError.leght5
                                : value.length < 7
                                    ? ValidPhoneError.leght6
                                    : value.length < 8
                                        ? ValidPhoneError.leght7
                                        : value.length < 9
                                            ? ValidPhoneError.leght8
                                            : value.length < 10
                                                ? ValidPhoneError.leght9
                                                : null;
  }
}

extension ValidPhoneExtension on ValidPhone {
  ValidPhoneError get isEmpty => ValidPhoneError.isEmpty;
  ValidPhoneError get numberStart9 => ValidPhoneError.numberStart9;

  ValidPhoneError get leght1 => ValidPhoneError.leght1;
  ValidPhoneError get leght2 => ValidPhoneError.leght2;
  ValidPhoneError get leght3 => ValidPhoneError.leght3;
  ValidPhoneError get leght4 => ValidPhoneError.leght4;
  ValidPhoneError get leght5 => ValidPhoneError.leght5;
  ValidPhoneError get leght6 => ValidPhoneError.leght6;
  ValidPhoneError get leght7 => ValidPhoneError.leght7;
  ValidPhoneError get leght8 => ValidPhoneError.leght8;
  ValidPhoneError get leght9 => ValidPhoneError.leght9;
  ValidPhoneError get phoneNoChanged => ValidPhoneError.phoneNoChanged;
}

enum ValidPhoneError {
  leght1,
  leght2,
  leght3,
  leght4,
  leght5,
  leght6,
  leght7,
  leght8,
  leght9,
  isEmpty,
  numberStart9,
  phoneNoChanged;
}
