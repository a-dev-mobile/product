import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

/// base class for the theme
// abstract class AppThemeFlex {
//   /// *---* [Light Theme] *---*
//   static ThemeData lightThemeData(BuildContext context) {
//     return ThemeData(
//       fontFamily: 'Girloy',
//     );
//   }
// }

/// base class for the theme
abstract class AppThemeFlex {
  /// *---* [Light Theme] *---*
  static ThemeData lightThemeData(BuildContext context) {
    return FlexThemeData.light(
      colors: const FlexSchemeColor(
        primary: Color(0xff00856e),
        primaryContainer: Color(0xff9bbc9c),
        secondary: Color(0xffffffff),
        secondaryContainer: Color(0xffaebdaf),
        tertiary: Color(0xff697395),
        tertiaryContainer: Color(0xffb8e6b9),
        appBarColor: Color(0xffaebdaf),
        error: Color(0xffb00020),
      ),
      tabBarStyle: FlexTabBarStyle.forBackground,
      surfaceTint: const Color(0xffffffff),
      subThemesData: const FlexSubThemesData(
        blendOnColors: false,
        defaultRadius: 15,
        elevatedButtonRadius: 40,
        outlinedButtonRadius: 40,
        toggleButtonsRadius: 25,
        inputDecoratorIsFilled: false,
        fabSchemeColor: SchemeColor.primary,
        appBarBackgroundSchemeColor: SchemeColor.onPrimary,
        tabBarIndicatorSchemeColor: SchemeColor.primary,
        bottomNavigationBarUnselectedLabelSchemeColor: SchemeColor.tertiary,
        bottomNavigationBarUnselectedIconSchemeColor: SchemeColor.tertiary,
        navigationBarUnselectedLabelSchemeColor: SchemeColor.tertiary,
        navigationBarUnselectedIconSchemeColor: SchemeColor.tertiary,
        navigationRailUnselectedLabelSchemeColor: SchemeColor.tertiary,
        navigationRailUnselectedIconSchemeColor: SchemeColor.tertiary,
      ),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      // To use the playground font, add GoogleFonts package and uncomment
      fontFamily: 'TTCommons',
    );
  }

  /// darkThemeData
  static ThemeData darkThemeData(BuildContext context) {
    return FlexThemeData.dark(
      colors: const FlexSchemeColor(
        primary: Color(0xff00856e),
        primaryContainer: Color(0xff273f33),
        secondary: Color(0xffffffff),
        secondaryContainer: Color(0xff4d6b5c),
        tertiary: Color(0xff697395),
        tertiaryContainer: Color(0xff356c50),
        appBarColor: Color(0xff4d6b5c),
        error: Color(0xffcf6679),
      ),
      surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
      blendLevel: 15,
      tabBarStyle: FlexTabBarStyle.forBackground,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 30,
        defaultRadius: 10,
        elevatedButtonRadius: 40,
        outlinedButtonRadius: 40,
        toggleButtonsRadius: 25,
        inputDecoratorIsFilled: false,
        fabSchemeColor: SchemeColor.primary,
        bottomNavigationBarUnselectedLabelSchemeColor: SchemeColor.tertiary,
        bottomNavigationBarUnselectedIconSchemeColor: SchemeColor.tertiary,
        navigationBarUnselectedLabelSchemeColor: SchemeColor.tertiary,
        navigationBarUnselectedIconSchemeColor: SchemeColor.tertiary,
        navigationRailUnselectedLabelSchemeColor: SchemeColor.tertiary,
        navigationRailUnselectedIconSchemeColor: SchemeColor.tertiary,
      ),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      // To use the playground font, add GoogleFonts package and uncomment
    );
  }
}
/* 
theme: FlexThemeData.light(
  colors: const FlexSchemeColor(
    primary: Color(0xff00856e),
    primaryContainer: Color(0xff9bbc9c),
    secondary: Color(0xffffffff),
    secondaryContainer: Color(0xffaebdaf),
    tertiary: Color(0xff697395),
    tertiaryContainer: Color(0xffb8e6b9),
    appBarColor: Color(0xffaebdaf),
    error: Color(0xffb00020),
  ),
  tabBarStyle: FlexTabBarStyle.forBackground,
  surfaceTint: Color(0xffffffff),
  subThemesData: const FlexSubThemesData(
    blendOnColors: false,
    defaultRadius: 10.0,
    elevatedButtonRadius: 40.0,
    outlinedButtonRadius: 40.0,
    toggleButtonsRadius: 25.0,
    inputDecoratorSchemeColor: SchemeColor.outline,
    inputDecoratorIsFilled: false,
    fabSchemeColor: SchemeColor.primary,
    appBarBackgroundSchemeColor: SchemeColor.onPrimary,
    tabBarIndicatorSchemeColor: SchemeColor.primary,
    bottomNavigationBarUnselectedLabelSchemeColor: SchemeColor.tertiary,
    bottomNavigationBarUnselectedIconSchemeColor: SchemeColor.tertiary,
    navigationBarUnselectedLabelSchemeColor: SchemeColor.tertiary,
    navigationBarUnselectedIconSchemeColor: SchemeColor.tertiary,
    navigationRailUnselectedLabelSchemeColor: SchemeColor.tertiary,
    navigationRailUnselectedIconSchemeColor: SchemeColor.tertiary,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  // To use the playground font, add GoogleFonts package and uncomment
  // fontFamily: GoogleFonts.notoSans().fontFamily,
),
darkTheme: FlexThemeData.dark(
  colors: const FlexSchemeColor(
    primary: Color(0xff00856e),
    primaryContainer: Color(0xff273f33),
    secondary: Color(0xffffffff),
    secondaryContainer: Color(0xff4d6b5c),
    tertiary: Color(0xff697395),
    tertiaryContainer: Color(0xff356c50),
    appBarColor: Color(0xff4d6b5c),
    error: Color(0xffcf6679),
  ),
  surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
  blendLevel: 15,
  tabBarStyle: FlexTabBarStyle.forBackground,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 30,
    defaultRadius: 10.0,
    elevatedButtonRadius: 40.0,
    outlinedButtonRadius: 40.0,
    toggleButtonsRadius: 25.0,
    inputDecoratorIsFilled: false,
    fabSchemeColor: SchemeColor.primary,
    bottomNavigationBarUnselectedLabelSchemeColor: SchemeColor.tertiary,
    bottomNavigationBarUnselectedIconSchemeColor: SchemeColor.tertiary,
    navigationBarUnselectedLabelSchemeColor: SchemeColor.tertiary,
    navigationBarUnselectedIconSchemeColor: SchemeColor.tertiary,
    navigationRailUnselectedLabelSchemeColor: SchemeColor.tertiary,
    navigationRailUnselectedIconSchemeColor: SchemeColor.tertiary,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  // To use the playground font, add GoogleFonts package and uncomment
  // fontFamily: GoogleFonts.notoSans().fontFamily,
),
// If you do not have a themeMode switch, uncomment this line
// to let the device system mode control the theme mode:
// themeMode: ThemeMode.system,


 */
