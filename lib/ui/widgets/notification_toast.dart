import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';

class NotificationToast extends StatelessWidget {
  const NotificationToast({
    super.key,
    required this.message,
    this.needShowSmile = false,
    this.color,
    this.onPressed,
    this.emoji = '😊',
  });

  final String message;
  final Color? color;
  final bool needShowSmile;
  final VoidCallback? onPressed;
  final String emoji;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.transparent,
        child: Container(
          margin: const EdgeInsets.only(
            top: 16,
            left: 16,
            right: 16,
          ),
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 22),
          decoration: BoxDecoration(
            color: color ?? context.myColors.darkGreen,
            borderRadius: BorderRadius.circular(22),
          ),
          child: InkWell(
            onTap: () {
              onPressed?.call();
              OverlaySupportEntry.of(context)?.dismiss();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    message,
                    style: context.T.bodyMedium?.copyWith(
                      fontFamily: 'Gotham Pro',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                if (needShowSmile)
                  RichText(
                    text: TextSpan(
                      text: emoji,
                      style: context.T.bodyMedium?.copyWith(
                        // fontFamily: 'Gotham Pro',
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
