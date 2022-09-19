import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guac_a_mole/components/AppButton.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Whack-a-mole".toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "fa-solid-900",
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: Text(
                    "Every whack matters".toUpperCase(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "fa-solid-900",
                        fontSize: 20,
                        color: Color.fromARGB(0xff, 0x58, 0xD1, 0xFF)),
                  )),
              AppButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/jeu');
                  },
                  text: "New Game"),
              AppButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/tableauscore');
                  },
                  text: "High Scores"),
              AppButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/validationscore');
                  },
                  text: "Score Validator"),
              AppButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/about');
                  },
                  text: "About"),
            ]),
      ),
      //backgroundColor
      backgroundColor: const Color.fromARGB(0xff, 11, 29, 49),
    );
  }
}
