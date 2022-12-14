// ignore_for_file: avoid-nested-conditional-expressions

import 'package:formz/formz.dart';

class ValidSearch extends FormzInput<String, ValidSearchError> {
  const ValidSearch.pure({this.externalError}) : super.pure('');
  const ValidSearch.dirty({
    this.externalError,
    String value = '',
  }) : super.dirty(value);

  final ValidSearchError? externalError;
  @override
  ValidSearchError? validator(String value) {
    if (externalError != null) {
      return externalError;
    }

    return value.isEmpty
        ? ValidSearchError.isEmpty
        : value.length < 2
            ? ValidSearchError.leght1
            : value.length < 3
                ? ValidSearchError.leght2
                : null;
  }
}

extension ValidSearchExtension on ValidSearch {
  ValidSearchError get leght1 => ValidSearchError.leght1;
  ValidSearchError get leght2 => ValidSearchError.leght2;
  ValidSearchError get isEmpty => ValidSearchError.isEmpty;
}

enum ValidSearchError { leght1, leght2, isEmpty }
