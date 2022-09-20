import 'package:flutter/material.dart';
import 'package:guac_a_mole/components/ListScore.dart';
import 'package:guac_a_mole/components/AppButton.dart';


class TableauScore extends StatelessWidget {

  final List<Score> data = <Score>[
    Score('15/09/2022 11:04:11', 'John', 100),
    Score('15/09/2022 11:04:11', 'Paul', 200),
    Score('15/09/2022 11:04:11', 'George', 300),
    Score('15/09/2022 11:04:11', 'Ringo', 400),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0xff, 11, 29, 49),
      body: Center(
        child:
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Score Validator".toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "fa-solid-900",
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
            ),
            // ListScore(data: data),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: AppButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                text: "Validate Score",
                isBold: true,
                borderColor: const Color.fromARGB(0xff, 88, 209, 255),
              ),
            )
          ],
        ),
      ),
    );
  }
}