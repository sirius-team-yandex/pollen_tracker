import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollen_tracker/bloc/profile_bloc/profile_bloc.dart';
import 'package:pollen_tracker/ui/features/home/home_widgets/pollen_widgets/pollen_status/pollen_air_status.dart';
import 'package:pollen_tracker/ui/features/home/home_widgets/pollen_widgets/pollen_forecast/forecast_view.dart';
import 'package:pollen_tracker/ui/models/forecast_vo.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';

class CurrentPollenWidget extends StatelessWidget {
  final List<ForecastVo> pollenForecasts;
  const CurrentPollenWidget({super.key, required this.pollenForecasts});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PollenAirStatus(
                pollenForecast: pollenForecasts.first,
              ),
              BlocBuilder<ProfileBloc, ProfileState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    logedIn: (profile) => DecoratedBox(
                      decoration: BoxDecoration(
                        color: context.myColors.primaryGreen,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Column(
                        children: List.generate(
                          profile.species.length >= 3 ? 3 : profile.species.length,
                          (index) => Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Text(profile.species[index].name, style: Theme.of(context).textTheme.displayMedium),
                          ),
                        ),
                      ),
                    ),
                    orElse: () => const SizedBox.shrink(),
                  );
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 240,
          child: ForecastView(vos: pollenForecasts),
        ),
      ],
    );
  }
}
