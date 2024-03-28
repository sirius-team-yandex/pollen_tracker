import 'package:flutter/material.dart';
import 'package:pollen_tracker/ui/features/home/home_widgets/pollen_widgets/pollen_status/pollen_air_status.dart';
import 'package:pollen_tracker/ui/features/home/home_widgets/pollen_widgets/pollen_forecast/forecast_view.dart';
import 'package:pollen_tracker/ui/models/forecast_vo.dart';

class CurrentPollenWidget extends StatelessWidget {
  final List<ForecastVo> pollenForecasts;
  const CurrentPollenWidget({super.key, required this.pollenForecasts});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PollenAirStatus(
          pollenForecast: pollenForecasts.first,
        ),
        SizedBox(
          height: 280,
          child: ForecastView(vos: pollenForecasts),
        ),
      ],
    );
  }
}
