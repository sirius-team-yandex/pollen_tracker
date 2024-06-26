import 'package:flutter/material.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerRectangleWidget extends StatelessWidget {
  const ShimmerRectangleWidget({super.key, required this.height, required this.width});
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.myColors.primaryGreen,
      highlightColor: context.myColors.background,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: SizedBox(
          height: height,
          width: width,
          child: const ColoredBox(
            color: Colors.white,
            child: SizedBox.shrink(),
          ),
        ),
      ),
    ); // TODO: shim
  }
}
