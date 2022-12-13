// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: avoid_unused_constructor_parameters

import 'dart:convert';

import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';

import 'package:product/app/common_cubits/common_cubits.dart';
import 'package:product/feature/common/enum.dart';
import 'package:product/navigation/navigation.dart';

class SettingCubit extends Cubit<SettingState> {
  SettingCubit({
    required AppRouter router,
    required LocaleCubit cubitLocale,
    required ThemeCubit cubitTheme,
  })  :
        _cubitLocale = cubitLocale,
        _cubitTheme = cubitTheme,
        super(SettingState(locale: cubitLocale.state, theme: cubitTheme.state));


  final LocaleCubit _cubitLocale;
  final ThemeCubit _cubitTheme;

  void changeLocale(Locale locale) {
    emit(state.copyWith(locale: locale));

    _cubitLocale.setLocale(locale);
  }

  void changeTheme({required ThemeMode theme}) {
    emit(state.copyWith(theme: theme));

    _cubitTheme.toggleTheme(theme: theme);
  }
}

@immutable
class SettingState {
  // enum
  final Locale locale;
  // enum
  final ThemeMode theme;

  const SettingState({
    required this.locale,
    required this.theme,
  });

  SettingState copyWith({
    Locale? locale,
    ThemeMode? theme,
  }) {
    return SettingState(
      locale: locale ?? this.locale,
      theme: theme ?? this.theme,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locale': locale.index,
      'theme': theme.index,
    };
  }

  factory SettingState.fromMap(Map<String, dynamic> map) {
    return SettingState(
      locale: Locale.values[map['locale'] as int],
      theme: ThemeMode.values[map['theme'] as int],
    );
  }

  String toJson() => json.encode(toMap());

  factory SettingState.fromJson(String source) =>
      SettingState.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'SettingState(locale: $locale, theme: $theme)';

  @override
  bool operator ==(covariant SettingState other) {
    if (identical(this, other)) return true;

    return other.locale == locale && other.theme == theme;
  }

  @override
  int get hashCode => locale.hashCode ^ theme.hashCode;
}
