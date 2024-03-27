import 'package:flutter/material.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/ui/features/profile/wiidgets/species/species_widget.dart';

class SpeciesController extends StatelessWidget {
  final List<String> userSpecies;
  const SpeciesController({super.key, required this.userSpecies});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 4,
      children: [
        ...List.generate(
          userSpecies.length,
          (i) => SpeciesWidget(
            text: userSpecies[i],
            action: () {
              //TODO ивент
              logger.i('ГОРОД');
            },
          ),
        ),
        const SpeciesWidget(
          child: Icon(Icons.add),
        ),
      ],
    );
  }
}
