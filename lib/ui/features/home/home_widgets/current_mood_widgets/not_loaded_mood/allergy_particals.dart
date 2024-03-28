// ignore_for_file: deprecated_member_use

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';

class AllergyAnimatedWidget extends StatefulWidget {
  final String svgName;

  const AllergyAnimatedWidget({super.key, required this.svgName});
  @override
  // ignore: library_private_types_in_public_api
  _RotatingSVGWidgetState createState() => _RotatingSVGWidgetState();
}

class _RotatingSVGWidgetState extends State<AllergyAnimatedWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat(); // This will repeat the animation indefinitely
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 140,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Transform.rotate(
                angle: _controller.value * 2 * pi,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      height: 20,
                      width: 20,
                      'assets/images/svg/${widget.svgName}.svg',
                      color: Colors.green,
                    ),
                    SvgPicture.asset(
                      height: 20,
                      width: 20,
                      'assets/images/svg/${widget.svgName}.svg',
                      color: Colors.green,
                    ),
                  ],
                ),
              );
            },
          ),
          SvgPicture.asset(
            height: 80,
            width: 80,
            'assets/images/svg/pollen_bad_status_emoji.svg',
            color: context.myColors.primary,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
