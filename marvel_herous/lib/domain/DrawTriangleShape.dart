import 'package:flutter/material.dart';

class TriangleShape extends CustomPainter {
  final Color backgroundColor;
  late Paint painter;

  TriangleShape({required this.backgroundColor});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;
    canvas.drawPath(createTriangle(size.width, size.height), paint);
  }

  Path createTriangle(double x, double y) {
    return Path()
      ..moveTo(0, y)
      ..lineTo(x, y / 3)
      ..lineTo(x, y);
  }

  @override
  bool shouldRepaint(TriangleShape oldDelegate) {
    return backgroundColor != oldDelegate.backgroundColor;
  }
}
