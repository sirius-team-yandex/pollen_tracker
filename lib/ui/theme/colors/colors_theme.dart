part of '../theme.dart';

class ColorsTheme {
  // ** MAIN Theme Colors **
  ColorsTheme({
    required this.onBackground,
    required this.primaryGreen,
    required this.darkGreen,
    required this.background,
    required this.primary,
  });

  factory ColorsTheme.light() => ColorsTheme(
        onBackground: const Color(0xFF111111),
        primaryGreen: const Color(0xFFe9f9f1),
        darkGreen: const Color(0xFFc2e5d0),
        background: MyColors.white,
        primary: MyColors.black,
      );

  factory ColorsTheme.dark() => ColorsTheme(
        onBackground: const Color(0xFFEEEEEE),
        primaryGreen: const Color(0xFF537761),
        darkGreen: const Color(0xFF86a994),
        background: MyColors.greyBackgroundDarkMode,
        primary: MyColors.white,
      );

  Color darkGreen;
  Color primaryGreen;
  Color background;
  Color primary;
  Color onBackground;
}

extension CustomThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get T => Theme.of(this).textTheme;
}
