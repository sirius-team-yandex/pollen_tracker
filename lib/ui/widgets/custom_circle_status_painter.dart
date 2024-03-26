import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pollen_tracker/common/enums/mood_type.dart';

class CustomCircleStatusPainter extends CustomPainter {
  CustomCircleStatusPainter(
    this.colorGood,
    this.colorBad,
    this.moodType,
  );

  final Color colorGood;
  final Color colorBad;
  final MoodType moodType;
  @override
  void paint(Canvas canvas, Size size) {
    double goodFrom = 0;
    double goodTo = 2 * pi;
    switch (moodType) {
      case MoodType.good:
        goodTo = 2 * pi;
        break;
      case MoodType.normal:
        goodTo = 4 * pi / 3;
        break;
      case MoodType.bad:
        goodTo = 2 * pi / 3;
        break;
      case MoodType.veryBad:
        goodTo = 0;
        break;
    }

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    final paintRed = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..color = colorGood;

    final paintGreen = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..color = colorBad;

    final rect = Rect.fromCircle(center: center, radius: radius);

    canvas.drawArc(rect, goodTo, pi * 2, false, paintGreen);
    canvas.drawArc(rect, goodFrom, goodTo, false, paintRed);
  }

  @override
  bool shouldRepaint(CustomCircleStatusPainter oldDelegate) {
    return false;
  }
}
