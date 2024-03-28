import 'package:flutter/material.dart';
import 'package:pollen_tracker/bloc/profile_bloc/profile_bloc.dart';
import 'package:pollen_tracker/common/enums/species_enums.dart';
import 'package:pollen_tracker/injectable_init.dart';
import 'package:pollen_tracker/ui/features/profile/wiidgets/species/species_widget.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';

class SpeciesAddDialog extends StatelessWidget {
  const SpeciesAddDialog({super.key, required this.actualSpecies});
  final List<Species> actualSpecies;
  final List<Species> allSpecies = Species.values;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: context.myColors.background,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 20.0,
              offset: Offset(0.0, 5.0),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Add species LALALA',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Wrap(
              children: [
                ...List.from(
                  allSpecies.where((element) => !actualSpecies.contains(element)).map(
                        (e) => SpeciesWidget(
                          text: e.name,
                          action: () {
                            getIt<ProfileBloc>().addSpecies(e);

                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
