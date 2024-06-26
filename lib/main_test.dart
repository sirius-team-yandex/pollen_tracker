import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/app/firebase/init.dart';
import 'package:pollen_tracker/common/enums/risc_enum.dart';
import 'package:pollen_tracker/common/gen/localization/app_localizations.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/domain/models/profile_entity.dart';
import 'package:pollen_tracker/domain/repositories/config_repository.dart';
import 'package:pollen_tracker/domain/repositories/pollen_repository.dart';
import 'package:pollen_tracker/domain/repositories/pollen_subject.dart';
import 'package:pollen_tracker/domain/repositories/profile_repository.dart';
import 'package:pollen_tracker/domain/repositories/profile_subject.dart';
import 'package:pollen_tracker/injectable_init.dart';
import 'package:pollen_tracker/ui/features/home/home_widgets/pollen_widgets/pollen_forecast/forecast_view.dart';
import 'package:pollen_tracker/ui/models/forecast_vo.dart';
import 'package:pollen_tracker/ui/theme/app_theme.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';

void main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      configureDependencies(env: Environment.test);
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
    final lightAppThemeData = AppThemeData.light();
    final darkAppThemeData = AppThemeData.dark();
    return AppTheme(
      data: AppThemeData.light(),
      child: MaterialApp(
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
        home: Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: ForecastView(
                vos: [
                  ForecastVo(time: DateTime.now(), level: RiscLevel.low),
                  ForecastVo(time: DateTime.now(), level: RiscLevel.moderate),
                  ForecastVo(time: DateTime.now(), level: RiscLevel.high),
                  ForecastVo(time: DateTime.now(), level: RiscLevel.veryHigh),
                  ForecastVo(time: DateTime.now(), level: RiscLevel.veryHigh),
                  ForecastVo(time: DateTime.now(), level: RiscLevel.veryHigh),
                  ForecastVo(time: DateTime.now(), level: RiscLevel.veryHigh),
                  ForecastVo(time: DateTime.now(), level: RiscLevel.veryHigh),
                  ForecastVo(time: DateTime.now(), level: RiscLevel.veryHigh),
                  ForecastVo(time: DateTime.now(), level: RiscLevel.veryHigh),
                  ForecastVo(time: DateTime.now(), level: RiscLevel.veryHigh),
                  ForecastVo(time: DateTime.now(), level: RiscLevel.veryHigh),
                  ForecastVo(time: DateTime.now(), level: RiscLevel.veryHigh),
                  ForecastVo(time: DateTime.now(), level: RiscLevel.veryHigh),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  String state = 'Default state';
  List<String> kOptions = List.empty();

  // In case of async state
  void loadState() async {
    final pollenSubject = GetIt.I<PollenSubject>();
    pollenSubject.observeForecast(DateTime.now()).listen((pollens) {
      setState(() {
        state = 'forecast count: ${pollens.length}';
      });
    });

    final profileSubject = GetIt.I<ProfileSubject>();
    profileSubject.observeAll().listen((event) {
      logger.e('profiles: $event');
    });

    const cityId = 1643318494;
    final profileRepo = GetIt.I<ProfileRepository>();
    await profileRepo.insert(
      const ProfileEntity(
        profileId: 0,
        cityId: cityId,
        name: 'default name 1',
        species: [],
      ),
    );

    final configRepo = GetIt.I<ConfigRepository>();
    final defaultConfig = await configRepo.get();
    configRepo.set(defaultConfig.copyWith(currProfileId: 0));

    final pollenRepo = GetIt.I<PollenRepository>();
    Future.delayed(const Duration(seconds: 4), () async {
      pollenRepo.updateForecastData();
    });
  }

  @override
  void initState() {
    super.initState();
    loadState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'state: $state',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        AutocompleteBasicExample(kOptions: kOptions),
      ],
    );
  }
}

// Harf to see text because its whote on white but it works
class AutocompleteBasicExample extends StatelessWidget {
  const AutocompleteBasicExample({required this.kOptions, super.key});

  final List<String> kOptions;

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return kOptions.where((String option) {
          return option.contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String selection) {
        debugPrint('You just selected $selection');
      },
    );
  }
}
