import 'package:flutter/material.dart';

extension MyThemeBuilder on BuildContext {
  MyColors get myColors =>
      Theme.of(this).extension<MyColors>() ??
      const MyColors(
        onBackground: Colors.red,
        background: Colors.red,
        primary: Colors.red,
        primaryGreen: Colors.red,
        darkGreen: Colors.red,
      );
}

class MyColors extends ThemeExtension<MyColors> {
  const MyColors({
    required this.onBackground,
    required this.primary,
    required this.background,
    required this.primaryGreen,
    required this.darkGreen,
  });
  final Color primary;
  final Color background;
  final Color onBackground;
  final Color primaryGreen;
  final Color darkGreen;
  static Color greyBackgroundDarkMode = const Color(0xFF343435);
  static Color white = const Color(0xFFFFFFFF);
  static Color black = const Color(0xFF000000);
  static Color redForecast = const Color(0xFFe36d6c);
  static Color greenForecast = const Color(0xFF7be1ac);
  static Color yellowForecast = const Color(0xFFfbdc71);
  static Color orangeForecast = const Color(0xFFefb494);

  @override
  ThemeExtension<MyColors> copyWith() {
    return this;
  }

  @override
  ThemeExtension<MyColors> lerp(
    covariant ThemeExtension<MyColors>? other,
    double t,
  ) {
    return this;
  }
}
