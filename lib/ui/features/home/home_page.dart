import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:pollen_tracker/common/enums/mood_type.dart';
import 'package:pollen_tracker/common/gen/localization/app_localizations.dart';
import 'package:pollen_tracker/domain/models/mood_record_entity.dart';
import 'package:pollen_tracker/domain/repositories/mood_record_repository.dart';
import 'package:pollen_tracker/ui/dialogs/mood_set_record_dialog.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  GetIt.I<MoodRecordRepository>().insert(
                    MoodRecordEntity(
                      date: DateTime.now(),
                      moodType: MoodType.veryBad,
                    ),
                  );
                },
                icon: const Icon(Icons.add),
              ),
              Card(
                child: TextButton(
                  onPressed: () async {
                    await showDialog<void>(
                      context: context,
                      builder: (BuildContext context) => const MoodSetRecordDialog(),
                    );
                  },
                  child: Text(
                    AppLocalizations.of(context).health_check,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
              ),
              TextButton(
                onPressed: () => context.push('/welcome'),
                child: const Text('go welcome'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
