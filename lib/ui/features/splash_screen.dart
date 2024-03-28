// write splash screen

import 'package:flutter/material.dart';
import 'package:pollen_tracker/common/enums/mood_type.dart';
import 'package:pollen_tracker/ui/widgets/mood_svg_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: MoodSvgWidget(
          moodType: MoodType.good,
        ),
      );
  }
}
