import 'package:flutter/material.dart';

class GameOver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0xff, 11, 29, 49),
      body: Container(
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
        child: Center(
          child: Text("Game Over"),
        ),
      ),
    );
  }
}