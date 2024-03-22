part of '../theme.dart';

class ColorsTheme {
  // ** MAIN Theme Colors **
  ColorsTheme({
    required this.background,
    required this.dark,
    required this.textPrimary,
    required this.textSecondary,
  });

  factory ColorsTheme.light() => ColorsTheme(
        background: const Color(0xFFF8FBFF),
        textPrimary: const Color(0xFF192038),
        textSecondary: const Color(0xFF7F8CA3),
        dark: const Color(0xFF283047),
      );

  factory ColorsTheme.dark() => ColorsTheme(
        background: const Color(0xFF252C41),
        textPrimary: const Color(0xFFFFFFFF),
        textSecondary: const Color(0xFF7F8CA3),
        dark: const Color(0xFF283047),
      );

  Color textPrimary;
  Color textSecondary;

  Color dark;
  Color background;
}
