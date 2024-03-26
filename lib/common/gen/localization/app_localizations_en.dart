import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get health_check => 'Enter your today feeling of health';

  @override
  String get welcome_description_1 =>
      'Pollen Tracker is a simple application that allows you to track your daily mood. We are here to help you keep track of your mood.';

  @override
  String get welcome_description_2 => 'Keep your health for detailed statistics.';

  @override
  String get save => 'Save';

  @override
  String get how_are_you_feeling => 'How are you feeling?';

  @override
  String get write_a_comment => 'Write a comment';

  @override
  String get atmospheric_pollution => 'Atmospheric pollution';

  @override
  String get profile => 'Profile';
}
