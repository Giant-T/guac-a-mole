import 'package:flutter/material.dart';

class Gradiant extends StatelessWidget {
  final Widget child;

  const Gradiant({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [
              0.1,
              0.3,
              0.5
            ],
            colors: [
              Color.fromARGB(0x3A, 255, 19, 68),
              Color.fromARGB(0x2A, 255, 19, 68),
              Colors.transparent,
            ],
          )
      ),
      child: child,
    );
  }
}
