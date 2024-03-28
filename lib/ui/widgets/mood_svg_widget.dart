import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pollen_tracker/common/enums/mood_type.dart';

class MoodSvgWidget extends StatelessWidget {
  final double size;

  const MoodSvgWidget({super.key, this.moodType, this.size = 90.0});

  final MoodType? moodType;

  @override
  Widget build(BuildContext context) {
    late final SvgPicture moodAsset;
    switch (moodType) {
      case MoodType.good:
        moodAsset = SvgPicture.asset('assets/images/svg/mood_1.svg');
      case MoodType.normal:
        moodAsset = SvgPicture.asset('assets/images/svg/mood_2.svg');
      case MoodType.bad:
        moodAsset = SvgPicture.asset('assets/images/svg/mood_3.svg');
      case MoodType.veryBad:
        moodAsset = SvgPicture.asset('assets/images/svg/mood_4.svg');
      default:
        moodAsset = SvgPicture.asset('assets/images/svg/mood_1.svg');
    }

    return SizedBox(height: size, width: size, child: moodAsset);
  }
}
