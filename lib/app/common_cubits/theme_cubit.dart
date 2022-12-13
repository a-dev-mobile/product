import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

///ToggleThemeCubit
class ThemeCubit extends HydratedCubit<ThemeMode> {
  /// default
  ThemeCubit() : super(ThemeMode.light);

  /// switch theme 1
  void toggleTheme({required ThemeMode theme}) {
    emit(theme);
  }

  /// switch theme 2
  void changeTheme() {
    state == ThemeMode.dark ? emit(ThemeMode.light) : emit(ThemeMode.dark);
  }

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    return ThemeMode.values.byName(json['theme'].toString());
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) =>
      <String, String>{'theme': state.name};
}
