import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localization/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru')
  ];

  /// No description provided for @health_check.
  ///
  /// In en, this message translates to:
  /// **'Enter your today feeling of health'**
  String get health_check;

  /// No description provided for @welcome_description_1.
  ///
  /// In en, this message translates to:
  /// **'Pollen Tracker is a simple application that allows you to track your daily mood. We are here to help you keep track of your mood.'**
  String get welcome_description_1;

  /// No description provided for @welcome_description_2.
  ///
  /// In en, this message translates to:
  /// **'Keep your health for detailed statistics.'**
  String get welcome_description_2;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @how_are_you_feeling.
  ///
  /// In en, this message translates to:
  /// **'How are you feeling?'**
  String get how_are_you_feeling;

  /// No description provided for @write_a_comment.
  ///
  /// In en, this message translates to:
  /// **'Write a comment'**
  String get write_a_comment;

  /// No description provided for @atmospheric_pollution.
  ///
  /// In en, this message translates to:
  /// **'Atmospheric pollution'**
  String get atmospheric_pollution;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @hazel.
  ///
  /// In en, this message translates to:
  /// **'Hazel'**
  String get hazel;

  /// No description provided for @elm.
  ///
  /// In en, this message translates to:
  /// **'Elm'**
  String get elm;

  /// No description provided for @pine.
  ///
  /// In en, this message translates to:
  /// **'Pine'**
  String get pine;

  /// No description provided for @alder.
  ///
  /// In en, this message translates to:
  /// **'Alder'**
  String get alder;

  /// No description provided for @poplar_cottonwood.
  ///
  /// In en, this message translates to:
  /// **'Poplar / Cottonwood'**
  String get poplar_cottonwood;

  /// No description provided for @oak.
  ///
  /// In en, this message translates to:
  /// **'Oak'**
  String get oak;

  /// No description provided for @plane.
  ///
  /// In en, this message translates to:
  /// **'Plane'**
  String get plane;

  /// No description provided for @birch.
  ///
  /// In en, this message translates to:
  /// **'Birch'**
  String get birch;

  /// No description provided for @cypress.
  ///
  /// In en, this message translates to:
  /// **'Cypress'**
  String get cypress;

  /// No description provided for @mugwort.
  ///
  /// In en, this message translates to:
  /// **'Mugwort'**
  String get mugwort;

  /// No description provided for @chenopod.
  ///
  /// In en, this message translates to:
  /// **'Chenopod'**
  String get chenopod;

  /// No description provided for @ragweed.
  ///
  /// In en, this message translates to:
  /// **'Ragweed'**
  String get ragweed;

  /// No description provided for @nettle.
  ///
  /// In en, this message translates to:
  /// **'Nettle'**
  String get nettle;

  /// No description provided for @grass_poaceae.
  ///
  /// In en, this message translates to:
  /// **'Grass / Poaceae'**
  String get grass_poaceae;

  /// No description provided for @history.
  ///
  /// In en, this message translates to:
  /// **'Record history'**
  String get history;

  /// No description provided for @dark_mode.
  ///
  /// In en, this message translates to:
  /// **'Dark mode'**
  String get dark_mode;

  /// No description provided for @light_mode.
  ///
  /// In en, this message translates to:
  /// **'Light mode'**
  String get light_mode;

  /// No description provided for @change_profile.
  ///
  /// In en, this message translates to:
  /// **'Change profile'**
  String get change_profile;

  /// No description provided for @create_profile.
  ///
  /// In en, this message translates to:
  /// **'Create profile'**
  String get create_profile;

  /// No description provided for @enter_name.
  ///
  /// In en, this message translates to:
  /// **'Enter name'**
  String get enter_name;

  /// No description provided for @change_city.
  ///
  /// In en, this message translates to:
  /// **'Change city'**
  String get change_city;

  /// No description provided for @did_you_sure_for_deleting_profile.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this profile'**
  String get did_you_sure_for_deleting_profile;

  /// No description provided for @add_species.
  ///
  /// In en, this message translates to:
  /// **'Add Species'**
  String get add_species;

  /// No description provided for @species_added.
  ///
  /// In en, this message translates to:
  /// **'Species added'**
  String get species_added;

  /// No description provided for @species_deleted.
  ///
  /// In en, this message translates to:
  /// **'Species deleted'**
  String get species_deleted;

  /// No description provided for @your_city_changed_on.
  ///
  /// In en, this message translates to:
  /// **'Your city changed on'**
  String get your_city_changed_on;

  /// No description provided for @your_profile_deleted.
  ///
  /// In en, this message translates to:
  /// **'Your profile deleted'**
  String get your_profile_deleted;

  /// No description provided for @long_press_for_remove.
  ///
  /// In en, this message translates to:
  /// **'Long press for remove'**
  String get long_press_for_remove;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Change language'**
  String get language;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ru': return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
