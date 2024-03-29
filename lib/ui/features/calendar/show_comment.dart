import 'package:flutter/material.dart';
import 'package:pollen_tracker/common/enums/mood_type.dart';
import 'package:pollen_tracker/common/localization.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';
import 'package:pollen_tracker/ui/widgets/custom_card.dart';
import 'package:pollen_tracker/ui/widgets/mood_svg_widget.dart';

class ShowComment extends StatelessWidget {
  const ShowComment({super.key, required this.selectedMoodType, this.selectedComment, required this.selectedDay});
  final MoodType selectedMoodType;
  final String? selectedComment;
  final DateTime selectedDay;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.all(16),
      height: 172,
      child: Column(
        children: [
          Text(
            selectedDay.toString().substring(0, 10),
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: selectedComment == null
                      ? Text(
                          context.S.no_comment,
                          style: context.T.displayMedium?.copyWith(
                            letterSpacing: 1,
                            height: 1.4,
                            color: context.myColors.primary,
                          ),
                        )
                      : Text(
                          selectedComment!,
                          style: context.T.displayMedium?.copyWith(
                            letterSpacing: 1,
                            height: 1.4,
                            color: context.myColors.primary,
                          ),
                        ),
                ),
                MoodSvgWidget(
                  moodType: selectedMoodType,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
