import 'package:flutter/material.dart';

class DottedLineDivider extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final double dotRadius;
  final double spacing;
  final double indent;
  final double endIndent;

  DottedLineDivider({
    this.height = 1.0,
    this.width = double.infinity,
    this.color = Colors.black,
    this.dotRadius = 2.0,
    this.spacing = 5.0,
    this.indent = 0.0,
    this.endIndent = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height),
      painter: DottedLinePainter(
        color: color,
        dotRadius: dotRadius,
        spacing: spacing,
        indent: indent,
        endIndent: endIndent,
      ),
    );
  }
}

class DottedLinePainter extends CustomPainter {
  final Color color;
  final double dotRadius;
  final double spacing;
  final double indent;
  final double endIndent;

  DottedLinePainter({
    required this.color,
    this.dotRadius = 2.0,
    this.spacing = 5.0,
    this.indent = 0.0,
    this.endIndent = 0.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = 1.0
      ..strokeCap = StrokeCap.round;

    double startX = indent;

    while (startX < size.width - endIndent) {
      canvas.drawCircle(Offset(startX, size.height / 2), dotRadius, paint);
      startX += spacing + 2 * dotRadius; // spacing between dots
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
