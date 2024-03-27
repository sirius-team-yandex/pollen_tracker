import 'package:flutter/material.dart';

enum IconPosition { up, center, end }

class IconSurround extends StatelessWidget {
  final Widget child;
  final IconData icon;
  final IconPosition? iconPosition;
  final EdgeInsets? padding;
  const IconSurround({
    super.key,
    required this.child,
    required this.icon,
    this.iconPosition = IconPosition.up,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: (iconPosition == IconPosition.up)
            ? CrossAxisAlignment.start
            : ((iconPosition == IconPosition.center) ? CrossAxisAlignment.center : CrossAxisAlignment.end),
        children: [
          Icon(icon),
          const SizedBox(
            width: 14,
          ),
          Flexible(child: child),
        ],
      ),
    );
  }
}
