import 'package:flutter/material.dart';
import 'package:pollen_tracker/common/enums/species_enums.dart';
import 'package:pollen_tracker/ui/widgets/species/species_widget.dart';

class SpeciesBuilder extends StatelessWidget {
  const SpeciesBuilder({
    super.key,
    required this.userSpecies,
    this.verticalDirection = false,
    this.showAddButton = true,
    this.onTap,
    this.onLongPress,
    this.lastElement,
  });
  final List<Species> userSpecies;
  final bool verticalDirection;
  final bool showAddButton;

  final void Function()? onTap;
  final void Function(int)? onLongPress;
  final Widget? lastElement;
  @override
  Widget build(BuildContext context) {
    print(userSpecies.length);
    return Wrap(
      direction: verticalDirection ? Axis.vertical : Axis.horizontal,
      spacing: verticalDirection ? 4 : 12,
      runSpacing: verticalDirection ? 12 : 4,
      children: [
        ...List.generate(
          userSpecies.length,
          (i) => SpeciesWidget(
            text: userSpecies[i].name,
            action: onTap,
            longPressAction: (onLongPress==null) ?null: () => onLongPress?.call(i),
          ),
        ),
        lastElement ?? const SizedBox(),
      ],
    );
  }
}
