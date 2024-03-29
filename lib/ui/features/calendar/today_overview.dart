import 'package:flutter/material.dart';
import 'package:pollen_tracker/common/enums/mood_type.dart';
import 'package:pollen_tracker/common/enums/risc_enum.dart';
import 'package:pollen_tracker/ui/features/home/home_widgets/pollen_widgets/pollen_status/pollen_air_status.dart';
import 'package:pollen_tracker/ui/widgets/custom_card.dart';
import 'package:pollen_tracker/ui/widgets/mood_svg_widget.dart';

class TodayOverview extends StatelessWidget {
  final MoodType moodType;
  final RiscLevel riscLevel;
  final DateTime selectedDay;

  const TodayOverview({
    super.key,
    required this.moodType,
    required this.riscLevel,
    required this.selectedDay,
  });

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
                  child: PollenAirStatus(
                    riscLevel: riscLevel,
                  ),
                ),
                MoodSvgWidget(
                  moodType: moodType,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
