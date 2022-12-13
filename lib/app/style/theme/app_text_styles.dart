// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';

/// Стили для текста. Название начинается с размера (s), жирности (w) и высоты (h).
/// Пример s20w600h24
abstract class AppTextStyles {
  /// Headline 1 Text Style 32 bold
  static TextStyle h1([Color? color]) => s32w700h40(color);

  static TextStyle s32w700h40([Color? color]) => TextStyle(
        color: color,
        fontSize: 32,
        fontWeight: FontWeight.w700,
        height: 40 / 32,
      );

  /// Headline 2 Text Style 26 extraBold
  static TextStyle h2([Color? color]) => s26w800h32(color);

  static TextStyle s26w800h32([Color? color]) => TextStyle(
        color: color,
        fontSize: 26,
        fontWeight: FontWeight.w800,
        height: 32 / 26,
      );

  /// Headline 3 Text Style 22 extraBold
  static TextStyle h3([Color? color]) => s22w800h28(color);

  static TextStyle s22w800h28([Color? color]) => TextStyle(
        color: color,
        fontSize: 22,
        fontWeight: FontWeight.w800,
        height: 28 / 22,
      );

  /// Headline 4 Text Style 20 extraBold
  static TextStyle h4([Color? color]) => s20w800h25(color);

  static TextStyle s20w800h25([Color? color]) => TextStyle(
        color: color,
        fontSize: 20,
        fontWeight: FontWeight.w800,
        height: 25 / 20,
      );

  /// Headline 5 Text Style 18 extraBold
  static TextStyle h5([Color? color]) => s18w800h22(color);

  static TextStyle s18w800h22([Color? color]) => TextStyle(
        color: color,
        fontSize: 18,
        fontWeight: FontWeight.w800,
        height: 22 / 18,
      );

  /// Headline 6 Text Style 14 Bold
  static TextStyle h6([Color? color]) => s14w700h18(color);

  static TextStyle s14w700h18([Color? color]) => TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: FontWeight.w700,
        height: 18 / 14,
      );

  /// Subtitle 1 Text Style 16 regular
  static TextStyle subtitle1([Color? color]) => s16w400h20(color);
  static TextStyle s16w400h20([Color? color]) => TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 20 / 16,
      );

  /// Subtitle 2 Text Style 14 regular
  static TextStyle subtitle2([Color? color]) => s14w400h18(color);
  static TextStyle s14w400h18([Color? color]) => TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 18 / 14,
      );

  /// Body Text 1 Text Style 14 regular
  static TextStyle bodyText1([Color? color]) => s14w400h16(color);
  static TextStyle s14w400h16([Color? color]) => TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 16 / 14,
      );

  /// Body Text 2 Text Style (the default) 16 regular
  static TextStyle bodyText2([Color? color]) => s16w400h18(color);
  static TextStyle s16w400h18([Color? color]) => TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 18 / 16,
      );

  /// Button Text Style 16 bold
  static TextStyle button([Color? color]) => s16w700h18(color);
  static TextStyle s16w700h18([Color? color]) => TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: FontWeight.w700,
        height: 18 / 16,
      );

  /// Caption Text Style 11 regular
  static TextStyle caption([Color? color]) => s11w400h14(color);
  static TextStyle s11w400h14([Color? color]) => TextStyle(
        color: color,
        fontSize: 11,
        fontWeight: FontWeight.w400,
        height: 14 / 11,
      );

  /// Overline Text Style 16 medium
  static TextStyle overline([Color? color]) => s11w500h14(color);
  static TextStyle s11w500h14([Color? color]) => TextStyle(
        color: color,
        fontSize: 11,
        fontWeight: FontWeight.w500,
        height: 14 / 11,
      );

  static TextStyle s14w400h20([Color? color]) => TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 20 / 14,
      );
  static TextStyle s12w400h18([Color? color]) => TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 18 / 12,
      );
  static TextStyle s14w500h20([Color? color]) => TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 20 / 14,
      );

  static TextStyle s16w500h24([Color? color]) => TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 24 / 16,
      );

  static TextStyle s20w600h24([Color? color]) => TextStyle(
        color: color,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        height: 24 / 20,
      );
}
