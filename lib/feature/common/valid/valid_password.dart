// ignore_for_file: avoid-nested-conditional-expressions

import 'package:formz/formz.dart';

class ValidPassword extends FormzInput<String, ValidPasswordError> {
  const ValidPassword.pure({this.externalError}) : super.pure('');
  const ValidPassword.dirty({
    this.externalError,
    String value = '',
  }) : super.dirty(value);

  final ValidPasswordError? externalError;
  @override
  ValidPasswordError? validator(String value) {
    if (externalError != null) {
      return externalError;
    }
    return value.isEmpty
        ? ValidPasswordError.isEmpty
        : value.length < 2
            ? ValidPasswordError.leght1
            : value.length < 3
                ? ValidPasswordError.leght2
                : value.length < 4
                    ? ValidPasswordError.leght3
                    : value.length < 5
                        ? ValidPasswordError.leght4
                        : value.length < 6
                            ? ValidPasswordError.leght5
                            : null;
  }
}

extension ValidPasswordExtension on ValidPassword {
  ValidPasswordError get isEmpty => ValidPasswordError.isEmpty;
  ValidPasswordError get inValid => ValidPasswordError.inValid;

  ValidPasswordError get leght1 => ValidPasswordError.leght1;
  ValidPasswordError get leght2 => ValidPasswordError.leght2;
  ValidPasswordError get leght3 => ValidPasswordError.leght3;
  ValidPasswordError get leght4 => ValidPasswordError.leght4;
  ValidPasswordError get leght5 => ValidPasswordError.leght5;
}

enum ValidPasswordError {
  leght1,
  leght2,
  leght3,
  leght4,
  leght5,
  inValid,
  isEmpty
}
