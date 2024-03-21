import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:pollen_tracker/common/enum/mood_type_enum.dart';
import 'package:pollen_tracker/common/gen/localization/app_localizations.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/domain/models/mood_record_entity.dart';
import 'package:pollen_tracker/domain/repositories/mood_record_repository.dart';
import 'package:pollen_tracker/domain/repositories/pollen_repository.dart';
import 'package:pollen_tracker/injection_container.dart';
import 'package:pollen_tracker/ui/theme/app_theme.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';

void main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await initializeDependencies();
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
    return AppTheme(
      data: GetIt.I<AppThemeData>(),
      child: MaterialApp(
        theme: materialThemeFromAppTheme(GetIt.I<AppThemeData>()),

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
        home: const Scaffold(
          body: Center(
            child: HomePage(),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${AppLocalizations.of(context).health_check})',
          style: GetIt.I<AppThemeData>().textTheme.displayMedium,
        ),
        IconButton(
            onPressed: () {
              GetIt.I<MoodRecordRepository>().insertMoodRecordModel(
                MoodRecordEntity(
                  date: DateTime.now(),
                  moodType: MoodType.veryBad, id: null,
                ),
              );
            },
            icon: const Icon(Icons.add))
      ],
    );
  }
}

// Kill it with fire when we will find better solution

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  String state = 'Default state';

  // In case of async state
  void loadState() async {
    var repo = GetIt.I<PollenRepository>();
    var entity = await repo.getPollenEntities(0, 0);

    setState(() {
      state = entity.toString();
    });
  }

  @override
  void initState() {
    super.initState();
    loadState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'state: $state',
      style: GetIt.I<AppThemeData>().textTheme.displayMedium,
    );
  }
}
