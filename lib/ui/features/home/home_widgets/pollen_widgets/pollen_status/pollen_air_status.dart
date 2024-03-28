import 'package:flutter/material.dart';
import 'package:pollen_tracker/common/enums/risc_enum.dart';
import 'package:pollen_tracker/common/localization.dart';
import 'package:pollen_tracker/ui/models/forecast_vo.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';
import 'package:pollen_tracker/ui/widgets/custom_card.dart';
import 'package:pollen_tracker/ui/widgets/custom_circle_status_painter.dart';

class PollenAirStatus extends StatelessWidget {
  const PollenAirStatus({super.key, required this.pollenForecast});
  final ForecastVo pollenForecast;

  int _riskLevelTo100(RiscLevel risc) {
    switch (risc) {
      case RiscLevel.low:
        return 25;
      case RiscLevel.moderate:
        return 50;
      case RiscLevel.high:
        return 75;
      case RiscLevel.veryHigh:
        return 100;
    }
  }

   String _riskLevelStringTo100(BuildContext context,RiscLevel risc) {
    switch (risc) {
      case RiscLevel.low:
        return context.S.risk_level_low;
      case RiscLevel.moderate:
        return context.S.risk_level_medium;

      case RiscLevel.high:
        return context.S.risk_level_high;
      case RiscLevel.veryHigh:
        return context.S.risk_level_very_high;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      height: 150,
      width: 200,
      backgroundColor: context.myColors.primaryGreen,
      padding: const EdgeInsets.all(16.0),
      borderRadius: BorderRadius.circular(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 60,
                height: 60,
                child: CustomPaint(
                  painter: CustomCircleStatusPainter(
                    MyColors.redForecast,
                    MyColors.greenForecast,
                    _riskLevelTo100(pollenForecast.level),
                  ),
                  child: Container(),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                '${_riskLevelTo100(pollenForecast.level)}',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge
                    ?.copyWith(color: MyColors.redForecast, fontWeight: FontWeight.bold, fontSize: 32),
              ),
            ],
          ),
          Flexible(
            child: Text(
              '${context.S.air_pollution}: ${_riskLevelStringTo100(context, pollenForecast.level)}',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
        ],
      ),
    );
  }
}
