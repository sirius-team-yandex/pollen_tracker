import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pollen_tracker/common/enums/mood_type.dart';

class MoodSvgWidget extends StatelessWidget {
  const MoodSvgWidget({super.key, required this.moodType});

  final MoodType moodType;

  @override
  Widget build(BuildContext context) {
    switch (moodType) {
      case MoodType.good:
        return SvgPicture.asset('assets/images/svg/mood_1.svg');
      case MoodType.normal:
        return SvgPicture.asset('assets/images/svg/mood_2.svg');
      case MoodType.bad:
        return SvgPicture.asset('assets/images/svg/mood_3.svg');
      case MoodType.veryBad:
        return SvgPicture.asset('assets/images/svg/mood_4.svg');
    }
  }
}
