import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:pollen_tracker/common/enums/species_enums.dart';
import 'package:pollen_tracker/common/localization.dart';
import 'package:pollen_tracker/ui/dialogs/species_add_dialog.dart';
import 'package:pollen_tracker/ui/widgets/species/species_builder.dart';
import 'package:pollen_tracker/ui/widgets/species/species_widget.dart';
import 'package:pollen_tracker/ui/widgets/notification_toast.dart';

class SpeciesController extends StatelessWidget {
  const SpeciesController({
    super.key,
    this.callback,
    this.removeCallback,
    required this.userSpecies,
  });
  final void Function(Species)? callback;
  final void Function(Species)? removeCallback;
  final List<Species> userSpecies;

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
    return SpeciesBuilder(
      userSpecies: userSpecies,
      onTap: () {
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
      onLongPress: (i) => removeCallback?.call(userSpecies[i]),
      lastElement: SpeciesWidget(
        child: const Icon(Icons.add),
        action: () => _showDialog(context),
      ),
    );
  }
}
