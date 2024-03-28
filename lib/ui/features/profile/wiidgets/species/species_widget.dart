import 'package:flutter/material.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';

class SpeciesWidget extends StatelessWidget {
  final String? text;
  final Color? color;
  final BorderRadius? borderRadius;
  final void Function()? longPressAction;
  final void Function()? action;
  final Widget? child;
  const SpeciesWidget({
    super.key,
    this.text,
    this.color,
    this.borderRadius,
    this.longPressAction,
    this.action,
    this.child,
  }) : assert((text != null) ^ (child != null));

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: (text != null) ? const EdgeInsets.symmetric(horizontal: 12) : EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(36),
        ),
        backgroundColor: color ?? context.myColors.darkGreen,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
      onPressed: action,
      onLongPress: longPressAction,
      child: child ??
          Text(
            text ?? '',
            style: context.T.displaySmall,
          ),
    );
  }
}
