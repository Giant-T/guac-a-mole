import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guac_a_mole/components/AppButton.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Text(
            "Whack-a-mole".toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "fa-solid-900",
            ),
          ),
          Text(
            "Every whack matters".toUpperCase(),
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "fa-solid-900",
                color: Color.fromARGB(0xff, 0x58, 0xD1, 0xFF)),
          ),
          AppButton(
              onPressed: () {
                print('Bien joué ! Même si c\'est Will qui a cliqué.');
              },
              text: "New Game"),
          AppButton(
              onPressed: () {
                print('Bien joué ! Même si c\'est Will qui a cliqué.');
              },
              text: "High Scores"),
          AppButton(
              onPressed: () {
                print('Bien joué ! Même si c\'est Will qui a cliqué.');
              },
              text: "Score Validator"),
          AppButton(
              onPressed: () {
                print('Bien joué ! Même si c\'est Will qui a cliqué.');
              },
              text: "About"),
        ]),
      ),
      //backgroundColor
      backgroundColor: Colors.blue[200],
    );
  }
}
