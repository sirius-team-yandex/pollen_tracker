import 'package:flutter/material.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';

class CustomCard extends StatelessWidget {
  final Widget? child;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;

  const CustomCard({
    super.key,
    this.child,
    this.height,
    this.width,
    this.backgroundColor,
    this.borderRadius,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 0,
        color: backgroundColor ?? context.myColors.primaryGreen,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(16),
        ),
        child: Padding(
          padding: padding ?? EdgeInsets.zero,
          child: child,
        ),
      ),
    );
  }
}
