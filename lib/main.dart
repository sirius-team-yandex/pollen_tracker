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
        ConfigInheritedWidget(
          configSubject: getIt<ConfigSubject>(),
          child: const PollenApp(),
        ),
      );
    },
    (error, stackTrace) => log.call('MAIN: Catch in mainZone $error'),
  );
}

class ConfigInheritedWidget extends InheritedWidget {
  final ConfigSubject configSubject;
  late StreamSubscription configSubscription;
  late ConfigEntity configEntity;

  ConfigInheritedWidget({
    super.key,
    required this.configSubject,
    required super.child,
  }) {
    configEntity = const ConfigEntity(locale: LocaleEnum.en, darkTheme: true);
    configSubscription = configSubject.observe().listen(
      (value) {
        logger.d('listened $configEntity');
        configEntity = value;
      },
    );
  }

  static ConfigInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ConfigInheritedWidget>();
  }

  @override
  bool updateShouldNotify(ConfigInheritedWidget oldWidget) {
    logger.d('updateShouldNotify');
    return configEntity != oldWidget.configEntity;
  }
}

class PollenApp extends StatelessWidget {
  const PollenApp({super.key});

  final ThemeMode selectedThemeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    final configInheritedWidget = ConfigInheritedWidget.of(context);
    final ConfigEntity? config = configInheritedWidget?.configEntity; // TODO: invoke
    logger.e('REBUILD $config');
    final selectedThemeMode = config?.darkTheme ?? false ? ThemeMode.dark : ThemeMode.light;
    final lightAppThemeData = AppThemeData.light();
    final darkAppThemeData = AppThemeData.dark();
    return AppTheme(
      data: AppThemeData.light(),
      child: MaterialApp.router(
        themeMode: selectedThemeMode,
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
