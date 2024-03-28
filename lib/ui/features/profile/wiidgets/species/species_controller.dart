import 'package:flutter/material.dart';
import 'package:pollen_tracker/bloc/profile_bloc/profile_bloc.dart';
import 'package:pollen_tracker/common/enums/species_enums.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/injectable_init.dart';
import 'package:pollen_tracker/ui/dialogs/species_add_dialog.dart';
import 'package:pollen_tracker/ui/features/profile/wiidgets/species/species_widget.dart';

class SpeciesController extends StatelessWidget {
  final List<Species> userSpecies;
  const SpeciesController({super.key, required this.userSpecies});

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => SpeciesAddDialog(
        actualSpecies: userSpecies,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 4,
      children: [
        ...List.generate(
          userSpecies.length,
          (i) => SpeciesWidget(
            text: userSpecies[i].name,
            action: () {
              //TODO ивент
              logger.i('ГОРОД');
            },
            longPressAction: () => {
              getIt<ProfileBloc>().removeSpecies(userSpecies[i]),
            },
          ),
        ),
        SpeciesWidget(
          child: const Icon(Icons.add),
          action: () => _showDialog(context),
        ),
      ],
    );
  }
}
