import 'package:flutter/material.dart';


abstract class AppColors {
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color transparent = Colors.transparent;
}
abstract class AppColorsResponsive {
  AppColorsResponsive({required this.isDark});

  final bool isDark;

  Color blackWhite() => isDark ? Colors.white : Colors.black;

  Color whiteBlack() => isDark ? Colors.black : Colors.white;

}
