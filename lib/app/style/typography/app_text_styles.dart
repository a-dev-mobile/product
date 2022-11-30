// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer-match-file-name

import 'package:flutter/material.dart';
import 'package:product/app/style/style.dart';


// ignore: avoid_classes_with_only_static_members
///
abstract class AppTextStyle {
  ///
  static const _defColor = Color(0xff1A231E);
  static TextStyle SEMI_BOLD_26({Color? color}) {
    return SEMI_BOLD_14(color: color).copyWith(fontSize: 26);
  }

  /// /// font H2
  static TextStyle SEMI_BOLD_20({Color? color}) {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: color,
      height: 1.25,
    );
  }

  static TextStyle SEMI_BOLD_22({Color color = _defColor}) {
    return TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: color,
      height: 1.5,
    );
  }

  static TextStyle BOLD_18({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: color,
      letterSpacing: 0.15,
    );
  }

  static TextStyle SEMI_BOLD_18({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: color,
      letterSpacing: 0.15,
    );
  }

  /// font H3_REGULAR
  static TextStyle REGULAR_18({
    Color? color,
  }) {
    return TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 18,
      color: color,
      letterSpacing: 0.15,
    );
  }

  static TextStyle REGULAR_22({Color color = _defColor}) {
    return TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 22,
      color: color,
    );
  }

  static TextStyle H4_BOLD({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: color,
      letterSpacing: 0.15,
    );
  }

  /// font BODY_SEMI_BOLD
  ///
  static TextStyle BOLD_16({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16,
      color: color,
      height: 1.5,
    );
  }

  static TextStyle SEMI_BOLD_16({Color? color}) {
    return SEMI_BOLD_14(color: color).copyWith(fontSize: 16);
  }

  static TextStyle SEMI_BOLD_14({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 14,
      color: color,
    );
  }

  static TextStyle MEDIUM_16({Color? color}) {
    return SEMI_BOLD_16(color: color).copyWith(
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle REGULAR_16({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: color,
    );
  }

  static TextStyle REGULAR_14({Color? color}) {
    return SEMI_BOLD_14(color: color).copyWith(fontWeight: FontWeight.w400);
  }

  static TextStyle REGULAR_12({Color? color}) {
    return REGULAR_14(color: color).copyWith(fontSize: 12);
  }

  static TextStyle SEMI_BOLD_12({Color? color}) {
    return SEMI_BOLD_14(color: color).copyWith(fontSize: 12);
  }

  static TextStyle TEXT_14_REGULAR({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: color,
    );
  }

  static TextStyle BTN_16_BOLD({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: color,
    );
  }

  static TextStyle SMALL_12_REGULAR({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: color,
    );
  }

  static TextStyle REGULAR_10({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 10,
      color: color,
    );
  }

  static const _baseTextStyle = TextStyle(
    fontWeight: AppFontWeight.regular,
    height: 1.5,
  );

  static TextStyle docClick({
    bool isUnderline = false,
    Color colorText = const Color(0xff00856E),
  }) =>
      _baseTextStyle.copyWith(
        color: colorText,
        fontSize: 14,
        height: 1.5,
        fontWeight: FontWeight.w400,
        decoration: isUnderline ? TextDecoration.underline : null,
      );
  static TextStyle colorText_14() => _baseTextStyle.copyWith(
        color: const Color(0xff697395),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  static TextStyle colorText_12() => _baseTextStyle.copyWith(
        color: const Color(0xff697395),
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );
  static TextStyle colorText_10() => _baseTextStyle.copyWith(
        color: const Color(0xff697395),
        fontSize: 10,
        fontWeight: FontWeight.w400,
      );

  /// Headline 1 Text Style 32 bold
  static TextStyle headline1({Color? color}) => _baseTextStyle.copyWith(
        color: color,
        fontSize: 32,
        fontWeight: AppFontWeight.bold,
        height: 1.25,
      );

  /// Headline 2 Text Style 26 extraBold
  static TextStyle headline2({Color? color}) => _baseTextStyle.copyWith(
        color: color,
        fontSize: 26,
        fontWeight: AppFontWeight.extraBold,
        height: 1.25,
      );

  /// Headline 3 Text Style 22 extraBold
  static TextStyle headline3({Color? color}) => _baseTextStyle.copyWith(
        color: color,
        fontSize: 22,
        fontWeight: AppFontWeight.extraBold,
        height: 1.25,
      );

  /// Headline 4 Text Style 20 extraBold
  static TextStyle headline4({Color? color}) => _baseTextStyle.copyWith(
        color: color,
        fontSize: 20,
        fontWeight: AppFontWeight.extraBold,
        height: 1.25,
      );

  /// Headline 5 Text Style 18 extraBold
  static TextStyle headline5({Color? color}) => _baseTextStyle.copyWith(
        color: color,
        fontSize: 18,
        fontWeight: AppFontWeight.extraBold,
        height: 1.25,
      );

  /// Headline 6 Text Style 14 Bold
  static TextStyle headline6({Color? color}) => _baseTextStyle.copyWith(
        color: color,
        fontSize: 14,
        fontWeight: AppFontWeight.bold,
        height: 1.25,
      );

  /// Subtitle 1 Text Style 16 regular
  static TextStyle subtitle1({Color? color}) => _baseTextStyle.copyWith(
        color: color,
        fontSize: 16,
      );

  /// Subtitle 2 Text Style 14 regular
  static TextStyle subtitle2({Color? color}) => _baseTextStyle.copyWith(
        color: color,
        fontSize: 14,
      );

  /// Body Text 1 Text Style 14 regular
  static TextStyle bodyText1({Color? color}) => _baseTextStyle.copyWith(
        color: color,
        fontSize: 14,
      );

  /// Body Text 2 Text Style (the default) 16 regular
  static TextStyle bodyText2({Color? color}) => _baseTextStyle.copyWith(
        color: color,
        fontSize: 16,
      );

  /// Button Text Style 16 bold
  static TextStyle button({Color? color}) => _baseTextStyle.copyWith(
        color: color,
        fontSize: 16,
        fontWeight: AppFontWeight.bold,
      );

  /// Caption Text Style 11 regular
  static TextStyle caption({Color? color}) => _baseTextStyle.copyWith(
        color: color,
        fontSize: 11,
      );

  /// Overline Text Style 16 medium
  static TextStyle overline({Color? color}) => _baseTextStyle.copyWith(
        color: color,
        fontSize: 11,
        fontWeight: AppFontWeight.medium,
      );
}
