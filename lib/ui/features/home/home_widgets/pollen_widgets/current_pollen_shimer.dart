import 'package:flutter/material.dart';
import 'package:pollen_tracker/ui/widgets/shimmer_rectangle_widget.dart';

class CurrentPollenShimer extends StatelessWidget {
  const CurrentPollenShimer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            SizedBox(
              height: 42,
            ),
            SizedBox(
              height: 150,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ShimmerRectangleWidget(
                    height: 150,
                    width: 200,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: ShimmerRectangleWidget(
                    height: 150,
                    width: 200,
                  )),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 32,
        ),
        ShimmerRectangleWidget(
          height: 200,
          width: double.infinity,
        )
      ],
    );
  }
}
