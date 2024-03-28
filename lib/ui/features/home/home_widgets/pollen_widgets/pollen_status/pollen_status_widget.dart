import 'package:flutter/material.dart';
import 'package:pollen_tracker/common/localization.dart';
import 'package:pollen_tracker/ui/features/home/home_widgets/pollen_widgets/pollen_status/current_species_info.dart';
import 'package:pollen_tracker/ui/features/home/home_widgets/pollen_widgets/pollen_status/pollen_air_status.dart';
import 'package:pollen_tracker/ui/models/forecast_vo.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';

class PollenStatus extends StatelessWidget {
  final ForecastVo pollenForecast;
  const PollenStatus({super.key, required this.pollenForecast});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
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
              const CurrentSpeciesInfo(),
            ],
          ),
        ],
      ),
    );
  }
}
