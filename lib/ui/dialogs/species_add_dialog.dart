import 'package:flutter/material.dart';
import 'package:pollen_tracker/bloc/profile_bloc/profile_bloc.dart';
import 'package:pollen_tracker/common/enums/species_enums.dart';
import 'package:pollen_tracker/common/localization.dart';
import 'package:pollen_tracker/injectable_init.dart';
import 'package:pollen_tracker/ui/widgets/species/species_widget.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';

class SpeciesAddDialog extends StatelessWidget {
  SpeciesAddDialog({super.key, required this.actualSpecies, this.callback});
  final void Function(Species)? callback;
  final List<Species> actualSpecies;
  final List<Species> allSpecies = Species.values.where((element) => element.type == SpeciesType.tree).toList();
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
              context.S.add_species,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 30.0),
            Wrap(
              alignment: WrapAlignment.start,
              spacing: 12.0,
              runSpacing: 12.0,
              children: [
                ...List.from(
                  allSpecies
                      .where(
                        (element) => !actualSpecies.contains(element),
                      )
                      .map(
                        (e) => SpeciesWidget(
                          text: e.name,
                          action: () {
                            getIt<ProfileBloc>().addSpecies(e);
                            callback?.call(e);
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
