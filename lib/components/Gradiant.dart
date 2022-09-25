import 'package:flutter/material.dart';
import 'dart:io';

class Gradiant extends StatefulWidget {
  final Widget child;
  final int r;
  final int g;
  final int b;

  const Gradiant(
      {Key? key,
      required this.child,
      required this.r,
      required this.g,
      required this.b})
      : super(key: key);

  @override
  State<Gradiant> createState() =>
      _GradiantState(this.child, this.r, this.g, this.b);
}

class _GradiantState extends State<Gradiant>
    with SingleTickerProviderStateMixin {
  final Widget child;
  final int r;
  final int g;
  final int b;
  double intesity = 0;
  late AnimationController controller;
  late Animation<double> _animation;

  @override
  void initState() {
    // repeated animation
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    controller.repeat(reverse: true);
    super.initState();
  }

  _GradiantState(this.child, this.r, this.g, this.b);

  @override
  Widget build(BuildContext context) {
    _animation = Tween<double>(begin: 40, end: 100)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {
          intesity = _animation.value;
        });
      });

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: const [0.2, 0.6, 1],
        colors: [
          Color.fromARGB(intesity.round(), r, g, b),
          Color.fromARGB((intesity * 0.4).round(), r, g, b),
          Colors.transparent,
        ],
      )),
      child: child,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
