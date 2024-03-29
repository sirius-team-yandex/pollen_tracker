import 'package:flutter/material.dart';
import 'package:pollen_tracker/ui/widgets/frame_mask.dart';
import 'package:pollen_tracker/ui/features/home/home_widgets/pollen_widgets/pollen_forecast/forecast_view.dart';
import 'package:pollen_tracker/ui/features/home/home_widgets/pollen_widgets/pollen_status/pollen_status_widget.dart';
import 'package:pollen_tracker/ui/models/forecast_vo.dart';

class CurrentPollenWidget extends StatelessWidget {
  final List<ForecastVo> pollenForecasts;
  const CurrentPollenWidget({super.key, required this.pollenForecasts});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PollenStatus(
          pollenForecast: pollenForecasts.first,
        ),
        const SizedBox(
          height: 32,
        ),
        FrameMask(child: ForecastView(vos: pollenForecasts)),
      ],
    );
  }
}
