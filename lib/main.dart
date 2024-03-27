import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pollen_tracker/app/firebase/init.dart';
import 'package:pollen_tracker/common/enums/locale_enum.dart';
import 'package:pollen_tracker/common/gen/localization/app_localizations.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/common/router_config.dart';
import 'package:pollen_tracker/domain/models/config_entity.dart';
import 'package:pollen_tracker/domain/repositories/config_subject.dart';
import 'package:pollen_tracker/injectable_init.dart';
import 'package:pollen_tracker/ui/theme/app_theme.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';

void main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await configureDependencies();
      await initFirebase();

      logger.i('Starting app in main.dart');
      runApp(
        const PollenAppWrapper(),
      );
    },
    (error, stackTrace) => log.call('MAIN: Catch in mainZone $error'),
  );
}

// TODO: все таки нужен inherited widget

class PollenAppWrapper extends StatefulWidget {
  const PollenAppWrapper({super.key});

  @override
  State<PollenAppWrapper> createState() => _PollenAppWrapperState();
}

class _PollenAppWrapperState extends State<PollenAppWrapper> {
  late final ConfigSubject configSubject;
  late final StreamSubscription configSubscription;
  late ConfigEntity configEntity;
  @override
  void initState() {
    super.initState();
    configSubject = getIt<ConfigSubject>();
    configEntity = const ConfigEntity(locale: LocaleEnum.en, darkTheme: ThemeMode.dark);
    configSubscription = configSubject.observe().listen(
      (value) {
        logger.d('listened $configEntity : oldValue $value');
        setState(
          () {
            configEntity = value;
          },
        );
      },
    );
  }

  @override
  void dispose() {
    configSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PollenApp(config: configEntity);
  }
}

class PollenApp extends StatelessWidget {
  const PollenApp({super.key, required this.config});

  final ConfigEntity? config;
  final ThemeMode selectedThemeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    logger.e('REBUILD $config');
    final selectedThemeMode = config?.darkTheme ?? ThemeMode.dark;
    final lightAppThemeData = AppThemeData.light();
    final darkAppThemeData = AppThemeData.dark();
    return AppTheme(
      data: AppThemeData.light(),
      child: MaterialApp.router(
        themeMode: ThemeMode.dark,
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
        locale: Locale(config?.locale.name ?? LocaleEnum.en.name), // change it later
        supportedLocales: [
          Locale(LocaleEnum.en.name), // English
          Locale(LocaleEnum.ru.name), // Russian
        ],
      ),
    );
  }
}
