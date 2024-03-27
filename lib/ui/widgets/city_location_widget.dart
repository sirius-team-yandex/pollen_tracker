import 'package:flutter/material.dart';
import 'package:pollen_tracker/ui/widgets/pages_appbar.dart';

class CityLocationWidget extends StatelessWidget {
  const CityLocationWidget({super.key, required this.location});
  final String location;

  @override
  Widget build(BuildContext context) {
    return PagesAppBar(
      title: location,
      icon: Icons.location_on,
    );
  }
}
