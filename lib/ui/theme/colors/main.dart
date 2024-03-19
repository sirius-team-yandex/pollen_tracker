part of '../theme.dart';

class Colors {
  // ********** MAIN ***********
  Colors({
    required this.background,
    required this.dark,
    required this.textPrymary,
    required this.textSecondary,
  });

  factory Colors.light() => Colors(
        background: const Color(0xFFF8FBFF),
        textPrymary: const Color(0xFF192038),
        textSecondary: const Color(0xFF7F8CA3),
        dark: const Color(0xFF283047),
      );

  factory Colors.dark() => Colors(
        background: const Color(0xFF252C41),
        textPrymary: const Color(0xFFFFFFFF),
        textSecondary: const Color(0xFF7F8CA3),
        dark: const Color(0xFF283047),
      );

  Color textPrymary;
  Color textSecondary;

  Color dark;
  Color background;
}
