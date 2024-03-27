import 'package:flutter/material.dart';
import 'package:pollen_tracker/ui/features/profile/wiidgets/species/species_widget.dart';

class TagController extends StatelessWidget {
  final List<String> userSpecies;
  const TagController({super.key, required this.userSpecies});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 6,
      children: [
        ...List.generate(
          userSpecies.length,
          (i) => SpeciesWidget(text: userSpecies[i]),
        ),
      ],
    );
  }
}
