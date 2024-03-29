import 'package:flutter/material.dart';
import 'package:pollen_tracker/ui/widgets/shimmer_rectangle_widget.dart';

class CurrentPollenShimer extends StatelessWidget {
  const CurrentPollenShimer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ShimmerRectangleWidget(
              height: 150,
              width: 200,
            ),
            Spacer(),
            ShimmerRectangleWidget(
              height: 150,
              width: 120,
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        ShimmerRectangleWidget(
          height: 200,
          width: 1000,
        ),
      ],
    );
  }
}
