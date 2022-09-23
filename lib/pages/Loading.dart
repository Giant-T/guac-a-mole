import 'package:flutter/material.dart';
import 'package:guac_a_mole/components/AppButtonSonarDonut.dart';
import 'package:guac_a_mole/components/Background.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0xff, 11, 29, 49),
      body: Background(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppButtonSonarDonut(
                  size: 180, color: Colors.white, onPressed: () {}),
              Text("Loading Awesome stuff".toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "fa-solid-900",
                    color: Colors.white,
                    fontSize: 25,
                  ))
            ]),
      ),
    );
  }
}
