import 'package:flutter/material.dart';
import 'package:guac_a_mole/components/AppButton.dart';

class Jeu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Center(
        child: AppButton(
            onPressed: () {
              Navigator.pushNamed(context, '/gameover');
            },
            text: "New Game",
            borderColor: const Color.fromARGB(0xff, 0x58, 0xD1, 0xFF),
            isBold: true)
      ),
    );
  }
}