import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:pollen_tracker/common/enums/species_enums.dart';
import 'package:pollen_tracker/common/localization.dart';
import 'package:pollen_tracker/ui/dialogs/species_add_dialog.dart';
import 'package:pollen_tracker/ui/features/profile/widgets/species/species_widget.dart';
import 'package:pollen_tracker/ui/widgets/notification_toast.dart';

class SpeciesController extends StatelessWidget {
  final List<Species> userSpecies;
  const SpeciesController({super.key, required this.userSpecies, this.callback, this.removeCallback});
  final void Function(Species)? callback;
  final void Function(Species)? removeCallback;
  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => SpeciesAddDialog(
        actualSpecies: userSpecies,
        callback: callback,
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
              showOverlayNotification(
                duration: const Duration(seconds: 5),
                (context) {
                  return NotificationToast(
                    message: context.S.long_press_for_remove,
                    needShowSmile: true,
                  );
                },
              );
            },
            longPressAction: () => {
              removeCallback?.call(userSpecies[i]),
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
