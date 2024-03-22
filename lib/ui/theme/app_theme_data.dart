// ignore_for_file: deprecated_member_use

part of 'theme.dart';

ThemeData materialThemeFromAppTheme(AppThemeData theme) => ThemeData.from(
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
      textTheme: theme.textTheme,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
      brightness: theme.isDarkMode ? Brightness.dark : Brightness.light,
      scaffoldBackgroundColor: theme.main.background,
      appBarTheme: AppBarTheme(
        backgroundColor: theme.main.background,
        foregroundColor: theme.main.background,
        centerTitle: true,
        titleTextStyle: theme.textTheme.headline3,
      ),
    );

class AppThemeData {
  AppThemeData({
    required this.main,
    required this.isDarkMode,
  });

  factory AppThemeData.dark() => AppThemeData(
        main: ColorsTheme.dark(),
        isDarkMode: true,
      );

  factory AppThemeData.light() => AppThemeData(
        main: ColorsTheme.light(),
        isDarkMode: false,
      );

  final bool isDarkMode;
  final ColorsTheme main;

  TextStyle create({
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.normal,
    Color? color = Colors.blue,
    double? figmaHeight,
  }) {
    final height = (figmaHeight ?? fontSize) / fontSize;

    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color ?? main.textPrimary,
      height: height,
    );
  }

  TextStyle get h1 => create(
        fontSize: 22,
        figmaHeight: 32,
        fontWeight: FontWeight.w700,
        color: main.textPrimary,
      );
  TextStyle get h2 => create(
        fontSize: 14,
        figmaHeight: 32,
        fontWeight: FontWeight.w700,
        color: main.textPrimary,
      );
  TextStyle get bodyText1 => create(
        fontSize: 14,
        figmaHeight: 32,
        fontWeight: FontWeight.w700,
        color: main.textPrimary,
      );

  TextTheme get textTheme => TextTheme(
        bodyText1: bodyText1,
        headline1: h1,
        headline2: h2,
      );
}
