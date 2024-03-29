import 'dart:math';

import 'package:flutter/material.dart';

class CustomCircleStatusPainter extends CustomPainter {
  CustomCircleStatusPainter({
    required this.colorGood,
    required this.colorBad,
    required this.riskLevel,
    this.strokeThickness = 5,
  }) : assert(riskLevel >= 0 && riskLevel <= 100);

  final Color colorGood;
  final Color colorBad;
  final double strokeThickness;
  final int riskLevel;
  @override
  void paint(Canvas canvas, Size size) {
    double goodFrom = 0;
    double goodTo = 2 * pi * (riskLevel / 100);

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - strokeThickness / 2;

    final paintRed = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeThickness
      ..color = colorGood;

    final paintGreen = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeThickness
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
