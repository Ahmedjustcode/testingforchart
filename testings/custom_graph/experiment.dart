import 'package:flutter/material.dart';

class ExperimentProgressChart extends StatelessWidget {
  const ExperimentProgressChart({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      // painter: ExperimentPainter(),
      child: Container(
        height: 150,
      ),
    );
  }
}

class ExperimentPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final drawableHeight = size.height -2 * 10/*border*/;
    final drawableWidth = size.width - 2 * 10/*border*/;
    canvas.clipRect(Rect.fromLTWH(0, 0, size.width, size.height));
    canvas.drawPaint(Paint()..color = Colors.red);
    Offset c = const Offset(50, 30);
    final color = Color(0xff121212);
    for(int i = 0; i <7; i++){
      canvas.drawRect(Rect.fromCenter(center: c,
          width: size.width /10, height: 20), Paint()..color = Colors.yellow);
      c+=Offset(size.width /10, 0);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
