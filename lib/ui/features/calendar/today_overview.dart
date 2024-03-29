import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollen_tracker/bloc/current_mood_bloc/current_mood_bloc.dart';
import 'package:pollen_tracker/common/enums/mood_type.dart';
import 'package:pollen_tracker/common/enums/risc_enum.dart';
import 'package:pollen_tracker/common/localization.dart';
import 'package:pollen_tracker/ui/features/home/home_widgets/pollen_widgets/pollen_status/pollen_air_status.dart';
import 'package:pollen_tracker/ui/models/forecast_vo.dart';
import 'package:pollen_tracker/ui/widgets/custom_card.dart';
import 'package:pollen_tracker/ui/widgets/mood_svg_widget.dart';

class TodayOverview extends StatelessWidget {
  final MoodType moodType;
  final RiscLevel riscLevel;

  const TodayOverview({
    super.key,
    required this.moodType,
    required this.riscLevel,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: EdgeInsets.all(16),
      height: 200,
      child: Column(
        children: [
          Text(
            DateTime.now().toString().substring(0, 10),
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
          )
        ],
      ),
    );
  }
}
