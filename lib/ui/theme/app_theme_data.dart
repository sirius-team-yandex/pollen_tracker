// ignore_for_file: deprecated_member_use

part of 'theme.dart';

ThemeData materialThemeFromAppTheme(AppThemeData theme) => ThemeData.from(
      textTheme: theme.textTheme,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        background: theme.main.background,
        primary: theme.main.background,
        secondary: theme.main.background,
        tertiary: theme.main.background,
        onSecondary: theme.main.background,
        onError: theme.main.background,
        surface: theme.main.textSecondary,
        onPrimary: theme.main.background,
        onSurface: theme.main.background,
        onBackground: theme.main.background,
        error: theme.main.background,
      ),
    ).copyWith(
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
      brightness: Brightness.dark,
      scaffoldBackgroundColor: theme.main.background,
      appBarTheme: AppBarTheme(
        backgroundColor: theme.main.background,
        foregroundColor: theme.main.background,
        centerTitle: true,
        titleTextStyle: theme.textTheme.headline3,
      ),
    );

CupertinoThemeData cupertinoThemeFromAppTheme(AppThemeData theme) =>
    MaterialBasedCupertinoThemeData(materialTheme: materialThemeFromAppTheme(theme)).copyWith(
      scaffoldBackgroundColor: theme.main.background,
    );

class AppThemeData {
  AppThemeData({
    required this.main,
    required this.isDarkMode,
  });

  factory AppThemeData.dark() => AppThemeData(
        main: Colors.dark(),
        isDarkMode: true,
      );

  factory AppThemeData.light() => AppThemeData(
        main: Colors.light(),
        isDarkMode: false,
      );

  final bool isDarkMode;
  final Colors main;

  TextStyle create({
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.normal,
    Color? color,
    double? figmaHeight,
  }) {
    final height = (figmaHeight ?? fontSize) / fontSize;

    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color ?? main.textPrymary,
      height: height,
    );
  }

  TextStyle get h1 => create(
        fontSize: 22,
        figmaHeight: 32,
        fontWeight: FontWeight.w700,
      );
  TextStyle get h2 => create(
        fontSize: 14,
        figmaHeight: 32,
        fontWeight: FontWeight.w700,
      );

  TextTheme get textTheme => TextTheme(
        headline1: h1,
        headline2: h2,
      );
}
