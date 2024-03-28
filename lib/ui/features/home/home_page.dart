import 'package:flutter/material.dart';

import 'package:pollen_tracker/ui/features/home/home_widgets/current_mood_widgets/current_mood_widget.dart';
import 'package:pollen_tracker/ui/features/home/home_widgets/pollen_widgets/current_pollen_builder.dart';

import 'package:pollen_tracker/ui/widgets/city_location_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CityLocationWidget(location: 'Sirius, Russia'),
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
                SizedBox(height: 40.0),
                CurrentPollenWidgetBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
