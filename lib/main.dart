import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:pollen_tracker/app/firebase/init.dart';
import 'package:pollen_tracker/common/enums/locale_enum.dart';
import 'package:pollen_tracker/common/enums/mood_type.dart';
import 'package:pollen_tracker/common/enums/species_enums.dart';
import 'package:pollen_tracker/common/gen/localization/app_localizations.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/common/router_config.dart';
import 'package:pollen_tracker/data/datasources/mood_local_storage_datasource_isar_impl.dart';
import 'package:pollen_tracker/data/datasources/pollen_local_storage_datasource.dart';
import 'package:pollen_tracker/data/mappers/pollen/pollen_dto_to_pollen_entity_mapper.dart';
import 'package:pollen_tracker/data/mappers/pollen/pollen_entity_to_pollen_model_mapper.dart';
import 'package:pollen_tracker/data/models/local/mood_record_model_isar.dart';
import 'package:pollen_tracker/data/models/local/pollen_model.dart';
import 'package:pollen_tracker/data/models/remote/ambee_dto.dart';
import 'package:pollen_tracker/domain/models/config_entity.dart';
import 'package:pollen_tracker/domain/models/pollen_entity.dart';
import 'package:pollen_tracker/domain/models/profile_entity.dart';
import 'package:pollen_tracker/domain/repositories/city_repository.dart';
import 'package:pollen_tracker/domain/repositories/config_repository.dart';
import 'package:pollen_tracker/domain/repositories/config_subject.dart';
import 'package:pollen_tracker/domain/repositories/profile_repository.dart';
import 'package:pollen_tracker/injectable_init.dart';
import 'package:pollen_tracker/ui/theme/app_theme.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';

void main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await configureDependencies();
      await initFirebase();
      await _prepopulate();

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
        locale: Locale(
          config?.locale.name ?? LocaleEnum.en.name,
        ), // change it later
        supportedLocales: [
          Locale(LocaleEnum.en.name), // English
          Locale(LocaleEnum.ru.name), // Russian
        ],
      ),
    );
  }
}

Future<void> _prepopulate() async {
  final repo = GetIt.I<ConfigRepository>();
  final config = await repo.get();

  if (!config.isFirstLaunch) {
    logger.i('Not the first launch, prepopulation is not perfomed.');
    return;
  }

  logger.i('First launch. Prepopulating db...');

  const newProfiles = [
    ProfileEntity(
      profileId: 0,
      cityId: 1392685764,
      name: 'Japan name',
      species: [Species.elm, Species.birch, Species.olive],
    ),
    ProfileEntity(
      profileId: 1,
      cityId: 1392685764,
      name: 'Indonesia name',
      species: [Species.elm, Species.birch, Species.oak],
    ),
    ProfileEntity(
      profileId: 2,
      cityId: 1392685764,
      name: 'Indian name',
      species: [Species.elm, Species.birch, Species.acacia],
    ),
  ];

  final pollenDataSource = GetIt.I<PollenLocalStorageDatasource>();
  final moodDataSource = GetIt.I<MoodLocalStorageDatasourceIsar>();
  final profileRepo = GetIt.I<ProfileRepository>();
  final citiesRepo = GetIt.I<CitiesRepository>();

  for (var profile in newProfiles) {
    final city = await citiesRepo.getCityById(profile.cityId);

    logger.i('Got city: ${city?.name}');

    final moodRecords = _generateMoodRecords(profile.profileId);
    logger.i('generated mood');
    final pollenRecords = await _generatePollenModel(city!.lat, city.lng);

    logger.i('generated pollen');

    profileRepo.insert(profile);
    pollenDataSource.insertAll(pollenRecords);
    moodDataSource.insertAll(moodRecords);
  }
}

List<MoodRecordModelIsar> _generateMoodRecords(int ownerId) {
  final date = DateTime.now().toUtc();

  final List<MoodRecordModelIsar> list = [];

  for (var i = 0; i < 30; i++) {
    final MoodType mood;

    switch (i % 4) {
      case 0:
        mood = MoodType.veryBad;
        break;
      case 1:
        mood = MoodType.bad;
        break;

      case 2:
        mood = MoodType.normal;
        break;

      case 3:
        mood = MoodType.good;
        break;
      default:
        mood = MoodType.good;
    }

    list.add(
      MoodRecordModelIsar(
        ownerId: ownerId,
        date: date.subtract(Duration(days: i)),
        moodType: mood,
      ),
    );

    logger.i('add mood #$i');
  }

  return list;
}

Future<List<PollenModel>> _generatePollenModel(double lat, double lng) async {
  logger.i('loadin bundle...');
  final asset = await rootBundle.loadString('assets/SiriusPollen.json');
  final pollenEntityToPollenModelMapper = GetIt.I<PollenEntityToPollenModelMapper>();
  final pollenDtoToPollenEntityMappper = GetIt.I<PollenDtoToPollenEntityMappper>();
  final data = await json.decode(asset);
  final entities = pollenDtoToPollenEntityMappper.map(AmbeeDto.fromJson(data));

  logger.i('enity mapped!');
  final List<PollenEntity> mappedEntities = [];

  for (var i = 0; i < 24 * 30; i++) {
    final currValue = i % entities.length;
    final currDate = DateTime.now().subtract(Duration(hours: i));
    mappedEntities.add(entities[currValue].copyWith(lat: lat, lng: lng, time: currDate));
  }

  final models = pollenEntityToPollenModelMapper.map(mappedEntities);
  return models;
}
