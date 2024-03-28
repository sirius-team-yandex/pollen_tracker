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

class PollenAppWrapper extends StatefulWidget {
  const PollenAppWrapper({super.key});

  @override
  State<PollenAppWrapper> createState() => _PollenAppWrapperState();
}

class _PollenAppWrapperState extends State<PollenAppWrapper> {
  late final ConfigSubject configSubject;
  late final StreamSubscription configSubscription;
  ConfigEntity? configEntity;
  @override
  void initState() {
    super.initState();
    configSubject = getIt<ConfigSubject>();
    configSubscription = configSubject.observe().listen(
      (value) {
        logger.d('listened $value : oldValue $configEntity');
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
    if (configEntity == null) {
      return const CircularProgressIndicator();
    }
    return ConfigInherited(
      configEntity: configEntity,
      child: const PollenApp(),
    );
  }
}

class ConfigInherited extends InheritedWidget {
  final ConfigEntity? configEntity;

  const ConfigInherited({
    super.key,
    required this.configEntity,
    required super.child,
  });

  static ConfigInherited of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ConfigInherited>()!;
  }

  @override
  bool updateShouldNotify(covariant ConfigInherited oldWidget) {
    // You can implement custom logic here to determine when to notify listeners
    return oldWidget.configEntity != configEntity;
  }
}

class PollenApp extends StatelessWidget {
  const PollenApp({super.key});

  final ThemeMode selectedThemeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    final config = ConfigInherited.of(context).configEntity;
    final selectedThemeMode = config?.darkTheme ?? ThemeMode.system;
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
