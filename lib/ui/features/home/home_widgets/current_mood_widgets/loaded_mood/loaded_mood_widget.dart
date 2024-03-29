import 'package:flutter/material.dart';
import 'package:pollen_tracker/bloc/current_mood_bloc/current_mood_bloc.dart';
import 'package:pollen_tracker/domain/models/mood_record_entity.dart';
import 'package:pollen_tracker/ui/features/home/home_widgets/current_mood_widgets/loaded_mood/loaded_mood_comment_field.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';
import 'package:pollen_tracker/ui/widgets/mood_changer_by_tap.dart';
import 'package:pollen_tracker/ui/widgets/custom_card.dart';

class LoadedMoodWidget extends StatelessWidget {
  final MoodRecordEntity record;
  const LoadedMoodWidget({super.key, required this.record});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MoodTapChanger(
          moodType: record.moodType,
          action: (moodType) {
            context.currentMoodBloc?.writeCurrentMood(
              record.copyWith(
                moodType: moodType,
              ),
            );
          },
        ),
        const SizedBox(
          width: 24,
        ),
        Expanded(
          child: CustomCard(
            height: 112,
            backgroundColor: context.myColors.darkGreen,
            child: MoodCommentChanger(
              record: record,
              action: (comment) {
                context.currentMoodBloc?.writeCurrentMood(
                  record.copyWith(
                    comment: comment,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
