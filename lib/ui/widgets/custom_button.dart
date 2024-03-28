import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final BorderRadius? borderRadius;
  final double? height;
  final double? width;
  final Widget child;
  final void Function()? onPressed;
  final Color? color;
  const CustomButton({
    super.key,
    required this.child,
    this.color,
    this.onPressed,
    this.height,
    this.width,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(16),
        ),
        backgroundColor: color,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
      onPressed: onPressed,
      child: SizedBox(
        width: width,
        height: height ?? 48,
        child: Center(child: child),
      ),
    );
  }
}
