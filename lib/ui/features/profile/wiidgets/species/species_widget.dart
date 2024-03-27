import 'package:flutter/material.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';
import 'package:pollen_tracker/ui/widgets/custom_card.dart';

class SpeciesWidget extends StatelessWidget {
  final String text;
  const SpeciesWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: const EdgeInsets.all(6),
      backgroundColor: context.myColors.darkGreen,
      child: Text(
        text,
        style: context.T.displaySmall,
      ),
    );
  }
}
