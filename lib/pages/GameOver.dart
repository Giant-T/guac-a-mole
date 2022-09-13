import 'package:flutter/material.dart';

class GameOver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Center(
        child: Text("Game Over"),
      ),
    );
  }
}