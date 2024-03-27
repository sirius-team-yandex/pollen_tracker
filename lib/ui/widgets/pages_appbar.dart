import 'package:flutter/material.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';

class PagesAppBar extends StatelessWidget {
  final String title;
  final IconData? icon;

  const PagesAppBar({super.key, required this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null)
          Icon(
            icon,
            color: context.myColors.primary,
          ),
        const SizedBox(width: 12.0),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
