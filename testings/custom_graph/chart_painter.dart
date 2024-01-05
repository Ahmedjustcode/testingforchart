import 'package:flutter/material.dart';

class ChartPainter extends CustomPainter {
  final List<String> x;
  final List<double> y;
  final double min, max;

  ChartPainter(this.x, this.y, this.min, this.max);


  static double border = 10;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.clipRect(Rect.fromLTWH(0, 0, size.width, size.height));
    canvas.drawPaint(Paint()
      ..color = Colors.teal);
    final drawableHeight = size.height - 2 * border;
    final drawableWidth = size.width - 2 * border;
    final hd = drawableHeight / 5;
    final wd = drawableWidth / x.length.toDouble();
    final height = hd * 3.0;
    final width = drawableWidth;
    //escape if values is invalid
    if (height <= 0 || width <= 0) return;
    if (max - min < 1.0e-6) return;
    final hr = height / (max - min);
    final left = border;
    final top = border;
    final c = Offset(left + wd / 2, top + height / 2);
    _drawOutline(canvas, c, wd, height);

    // canvas.drawCircle(const Offset(0, 0), 20, Paint()..color = Colors.red);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

  final Paint outlinePaint = Paint()
    ..color = Colors.white
   ..strokeWidth = 1
    ..style = PaintingStyle.stroke;

  void _drawOutline(Canvas canvas, Offset c, double wd, double height) {
    for (var p in y) {
      final rect = Rect.fromCenter(center: c, width: wd, height: height);
      canvas.drawRect(rect, outlinePaint);
      c+=Offset(wd, 0);
    }
  }
}
