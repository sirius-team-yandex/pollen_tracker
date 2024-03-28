import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollen_tracker/bloc/current_mood_bloc/current_mood_bloc.dart';
import 'package:pollen_tracker/common/localization.dart';
import 'package:pollen_tracker/ui/dialogs/mood_set_record_dialog.dart';
import 'package:pollen_tracker/ui/features/home/home_widgets/current_mood_widgets/not_loaded_mood/allergy_particals.dart';
import 'package:pollen_tracker/ui/widgets/custom_button.dart';

class NewMoodWidget extends StatelessWidget {
  const NewMoodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const AllergyAnimatedWidget(
          svgName: 'virus-svgrepo-com-2',
        ),
        CustomButton(
          width: double.infinity,
          child: Text(
            context.S.how_are_you_feeling,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          onPressed: () async {
            await showDialog<void>(
              context: context,
              builder: (BuildContext contextDialog) => BlocProvider.value(
                value: context.currentMoodBloc!,
                child: const MoodSetRecordDialog()),
            );
          },
        ),
      ],
    );
  }
}
