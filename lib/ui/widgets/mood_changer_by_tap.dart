import 'package:flutter/material.dart';
import 'package:pollen_tracker/common/enums/mood_type.dart';
import 'package:pollen_tracker/ui/widgets/mood_svg_widget.dart';

class MoodTapChanger extends StatelessWidget {
  final MoodType moodType;
  final Function(MoodType) action;
  const MoodTapChanger({super.key, required this.moodType, required this.action});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        int size = MoodType.values.length;
        final nextValue = MoodType.values[(moodType.index + 1) % size];
        action(nextValue);
      },
      child: MoodSvgWidget(
        moodType: moodType,
        size: 112,
      ),
    );
  }
}
