import 'package:flutter/material.dart';
import 'dart:math';

class SonarDonut extends StatefulWidget {
  final double size;
  final Color color;
  const SonarDonut({required this.size, required this.color, super.key});

  @override
  State<SonarDonut> createState() => _SonarDonut();
}

class Donut extends CustomPainter {
  final double waveRadius;
  final double waveGap;
  final Color color;

  Donut(this.waveRadius, this.waveGap, this.color);

  @override
  void paint(Canvas canvas, Size size) {
    var centreX = size.width * 0.5;
    var centreY = size.height * 0.5;
    var centre = Offset(centreX, centreY);
    var radius = min(centreX, centreY) * 0.5;
    // donut shape
    var paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = radius * 1.2;
    canvas.drawCircle(centre, radius, paint);

    // sonar wave
    var wavePaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = radius * 0.15;
    canvas.drawCircle(centre, radius * (1 + waveGap + waveRadius), wavePaint);
    wavePaint.color = Color.fromARGB(
        (color.alpha * (1 - waveRadius / waveGap)).toInt(),
        color.red,
        color.green,
        color.blue);
    canvas.drawCircle(
        centre, radius * (1 + 2 * waveGap + waveRadius), wavePaint);
  }

  @override
  bool shouldRepaint(Donut oldDelegate) {
    return oldDelegate.waveRadius != waveRadius;
  }
}

class _SonarDonut extends State<SonarDonut>
    with SingleTickerProviderStateMixin {
  double waveRadius = 0;
  double waveGap = 0.5;
  late double _size;
  late Animation<double> _animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    controller.forward();

    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reset();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _size = widget.size;

    _animation = Tween<double>(begin: 0, end: waveGap).animate(controller)
      ..addListener(() {
        setState(() {
          waveRadius = _animation.value;
        });
      });

    return AnimatedContainer(
      width: _size,
      height: _size,
      duration: const Duration(milliseconds: 80),
      curve: Curves.easeInOut,
      child: CustomPaint(
        size: Size(_size, _size),
        painter: Donut(waveRadius, waveGap, widget.color),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
