import 'package:flutter/material.dart';

class FrameMask extends StatelessWidget {
  final Widget child;
  final bool isVertical;
  const FrameMask({
    super.key,
    required this.child,
    this.isVertical = false,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.dstIn,
      shaderCallback: (rect) {
        return LinearGradient(
          begin: isVertical ? Alignment.topCenter : Alignment.centerLeft,
          end: isVertical ? Alignment.bottomCenter : Alignment.centerRight,
          stops: const [0, 0.03, 0.5, 0.97, 1],
          colors: [Colors.white.withOpacity(0), Colors.white, Colors.white, Colors.white, Colors.white.withOpacity(0)],
        ).createShader(rect);
      },
      child: child,
    );
  }
}
