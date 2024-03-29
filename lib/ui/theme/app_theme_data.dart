// ignore_for_file: deprecated_member_use

part of 'theme.dart';

ThemeData materialThemeFromAppTheme(AppThemeData theme) => ThemeData.from(
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        background: theme.main.background,
        primary: theme.main.primary,
        secondary: theme.main.primaryGreen,
        surface: theme.main.darkGreen,
        tertiary: theme.main.background,
        onSecondary: theme.main.background,
        onError: theme.main.background,
        onPrimary: theme.main.primary,
        onSurface: theme.main.primary,
        onBackground: theme.main.onBackground,
        error: theme.main.background,
      ),
    ).copyWith(
      extensions: <ThemeExtension<MyColors>>[
        MyColors(
          onBackground: theme.main.onBackground,
          primaryGreen: theme.main.primaryGreen,
          darkGreen: theme.main.darkGreen,
          background: theme.main.background,
          primary: theme.main.primary,
        ),
      ],
      primaryColorDark: theme.main.darkGreen,
      iconTheme: const IconThemeData().copyWith(
        color: theme.main.primary,
      ),
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
        toolbarHeight: 42,
        backgroundColor: theme.main.background,
        foregroundColor: theme.main.background,
        centerTitle: true,
        titleTextStyle: theme.textTheme.headline3,
      ),
      splashColor: Colors.transparent,
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
      color: color ?? main.primary,
      height: height,
    );
  }

  TextStyle get headlineLarge => create(
        fontSize: 24,
        figmaHeight: 30,
        fontWeight: FontWeight.w400,
        color: main.primary,
      );

  TextStyle get headlineMedium => create(
        fontSize: 18,
        figmaHeight: 22,
        fontWeight: FontWeight.w400,
        color: main.primary,
      );

  TextStyle get displayLarge => create(
        fontSize: 20,
        figmaHeight: 24,
        fontWeight: FontWeight.w500,
        color: main.primary,
      );
  TextStyle get displayMedium => create(
        fontSize: 16,
        figmaHeight: 20,
        fontWeight: FontWeight.w400,
        color: main.primary,
      );

  TextStyle get displaySmall => create(
        fontSize: 14,
        figmaHeight: 16,
        fontWeight: FontWeight.w400,
        color: main.primary,
      );

  TextTheme get textTheme => TextTheme(
        headlineLarge: headlineLarge,
        headlineMedium: headlineMedium,
        displayLarge: displayLarge,
        displayMedium: displayMedium,
        displaySmall: displaySmall,
      );
}
