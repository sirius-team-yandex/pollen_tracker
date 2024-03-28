import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollen_tracker/bloc/current_mood_bloc/current_mood_bloc.dart';
import 'package:pollen_tracker/ui/widgets/mood_changer_by_tap.dart';
import 'package:pollen_tracker/ui/widgets/mood_svg_widget.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentMoodBloc, CurrentMoodState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(child: CircularProgressIndicator()),
          loaded: (mood) => MoodTapChanger(
            moodType: mood.moodType,
            action: (moodType) {
              context.currentMoodBloc?.writeCurrentMood(
                mood.copyWith(
                  moodType: moodType,
                ),
              );
            },
          ),
          notSet: () => const MoodSvgWidget(),
        );
      },
    );
  }
}
