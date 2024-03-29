import 'package:flutter/material.dart';
import 'package:pollen_tracker/common/localization.dart';
import 'package:pollen_tracker/ui/features/home/home_widgets/pollen_widgets/pollen_status/pollen_air_status.dart';
import 'package:pollen_tracker/ui/models/forecast_vo.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';

class PollenStatus extends StatelessWidget {
  final ForecastVo pollenForecast;
  const PollenStatus({super.key, required this.pollenForecast});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        children: [
          Text(
            context.S.atmospheric_pollution,
            style: context.T.displayLarge,
          ),
          const SizedBox(
            height: 28,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PollenAirStatus(
                pollenForecast: pollenForecast,
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32.0),
                      color: context.myColors.primaryGreen,
                    ),
                    child: Text('Тимофеевка', style: Theme.of(context).textTheme.displayMedium),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32.0),
                      color: context.myColors.primaryGreen,
                    ),
                    child: Text('Тимофеевка', style: Theme.of(context).textTheme.displayMedium),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32.0),
                      color: context.myColors.primaryGreen,
                    ),
                    child: Text('Тимофеевка', style: Theme.of(context).textTheme.displayMedium),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
