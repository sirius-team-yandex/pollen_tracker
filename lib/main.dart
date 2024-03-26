import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:pollen_tracker/app/firebase/init.dart';
import 'package:pollen_tracker/common/gen/localization/app_localizations.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/common/router_config.dart';
import 'package:pollen_tracker/domain/repositories/profile_subject.dart';
import 'package:pollen_tracker/injectable_init.dart';
import 'package:pollen_tracker/ui/theme/app_theme.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';

void main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      configureDependencies();
      await initFirebase();

      logger.i('Starting app in main.dart');
      runApp(const PollenApp());
    },
    (error, stackTrace) => log.call('MAIN: Catch in mainZone $error'),
  );
}

class PollenApp extends StatelessWidget {
  const PollenApp({super.key});

  @override
  Widget build(BuildContext context) {
    final rep = GetIt.I<ProfileSubject>();
    final st = rep.observeCurrent().listen((event) {});

    st.cancel();

    final lightAppThemeData = AppThemeData.light();
    final darkAppThemeData = AppThemeData.dark();
    return AppTheme(
      data: AppThemeData.light(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: routerConfig,
        theme: materialThemeFromAppTheme(lightAppThemeData),
        darkTheme: materialThemeFromAppTheme(darkAppThemeData),
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: const Locale('ru'), // change it later
        supportedLocales: const [
          Locale('en'), // English
          Locale('ru'), // Russian
        ],
      ),
    );
  }
}
