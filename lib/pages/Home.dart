import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guac_a_mole/components/AppButton.dart';
import 'package:guac_a_mole/components/AppButtonSonarDonut.dart';
import '../components/Background.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppButtonSonarDonut(
                  size: 180,
                  color: const Color.fromARGB(0xff, 0x58, 0xD1, 0xFF),
                  onPressed: () {}),
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
                    "Every tap matters".toUpperCase(),
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
                  text: "New Game",
                  borderColor: const Color.fromARGB(0xff, 0x58, 0xD1, 0xFF),
                  isBold: true),
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
