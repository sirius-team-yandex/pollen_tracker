import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollen_tracker/domain/models/city_entity.dart';
import 'package:pollen_tracker/domain/repositories/sync_city_repository.dart';
import 'package:pollen_tracker/injectable_init.dart';

import 'package:pollen_tracker/ui/features/home/home_widgets/current_mood_widgets/current_mood_widget.dart';
import 'package:pollen_tracker/ui/features/home/home_widgets/pollen_widgets/current_pollen_builder.dart';

import 'package:pollen_tracker/ui/widgets/city_location_widget.dart';
import 'package:pollen_tracker/ui/widgets/shimmer_rectangle_widget.dart';

import '../../../bloc/profile_bloc/profile_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            return state.maybeWhen(
              logedIn: (profile) {
                final CityEntity? city = getIt<SyncCitiesRepository>().getCityByIdSync(profile.cityId);
                if (city != null) {
                  return CityLocationWidget(location: '${city.name}, ${city.country}');
                }
                return const SizedBox.shrink();
              },
              orElse: () => const ShimmerRectangleWidget(
                height: 20,
                width: 100,
              ),
            );
          },
        ),
      ),
      body: const SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CurrentMoodWidget(),
                CurrentPollenWidgetBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
