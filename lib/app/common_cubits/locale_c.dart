import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product/core/storage/local_storage.dart';
import 'package:product/feature/common/enum.dart';

class LocaleCubit extends Cubit<Locale> {
  LocaleCubit({required LocalStorage storage})
      : _storage = storage,
        super(Locale.fromValue(Platform.localeName.split('_').first));

  final LocalStorage _storage;

  Future<void> load() async {
    final selectedLocale = await _storage.getLocale();

    if (selectedLocale.isNotEmpty) {
      setLocale(Locale.fromValue(selectedLocale));
    } else {
      setLocale(state);
    }
  }

  ///
  void setLocale(Locale locale) {
    emit(locale);
    _storage.setLocale(locale.name);
  }

  ///
  void changeLocale() {
    state == Locale.en ? setLocale(Locale.ru) : setLocale(Locale.en);
  }
}
