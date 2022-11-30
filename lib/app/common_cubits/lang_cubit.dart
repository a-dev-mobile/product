import 'dart:ui';

import 'package:hydrated_bloc/hydrated_bloc.dart';

const _ru = 'ru';
const _en = 'en';

///ToggleLangCubit
class LangCubit extends HydratedCubit<String> {
  /// default
  LangCubit() : super(_defaultLocale);
  static String get _defaultLocale {
    switch (window.locale.languageCode) {
      case _ru:
        return _ru;
      default:
        return _en;
    }
  }

  ///
  void setLocaleEN() {
    emit(_en);
  }

  ///
  void setLocaleRU() {
    emit(_ru);
  }

  ///
  void changeLocale() {
    state == _en ? emit(_ru) : emit(_en);
  }

  @override
  String fromJson(Map<String, dynamic> json) => json['lang_code'].toString();

  @override
  Map<String, dynamic>? toJson(String state) =>
      <String, String>{'lang_code': state};
}
