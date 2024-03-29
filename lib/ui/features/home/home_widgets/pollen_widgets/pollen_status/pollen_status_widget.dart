import 'package:flutter/material.dart';
import 'package:pollen_tracker/common/localization.dart';
import 'package:pollen_tracker/ui/features/home/home_widgets/pollen_widgets/pollen_status/current_species_info.dart';
import 'package:pollen_tracker/ui/features/home/home_widgets/pollen_widgets/pollen_status/pollen_air_status.dart';
import 'package:pollen_tracker/ui/models/forecast_vo.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';
import 'package:pollen_tracker/ui/widgets/custom_card.dart';

class PollenStatus extends StatelessWidget {
  final ForecastVo pollenForecast;
  const PollenStatus({super.key, required this.pollenForecast});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.S.atmospheric_pollution,
          style: context.T.displayLarge,
        ),
        const SizedBox(
          height: 18,
        ),
        SizedBox(
          height: 150,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomCard(
                width: 200,
                backgroundColor: context.myColors.primaryGreen,
                padding: const EdgeInsets.all(16.0),
                borderRadius: BorderRadius.circular(16.0),
                child: PollenAirStatus(
                  riscLevel: pollenForecast.level,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              const Expanded(child: CurrentSpeciesInfo()),
            ],
          ),
        ),
      ],
    );
  }
}
