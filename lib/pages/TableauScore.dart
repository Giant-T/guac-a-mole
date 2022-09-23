import 'package:flutter/material.dart';
import 'package:guac_a_mole/components/ListScore.dart';
import 'package:guac_a_mole/components/AppButton.dart';
import '../components/Background.dart';


class TableauScore extends StatelessWidget {

  final List<Score> data = <Score>[
    Score('2022-09-23 09:22:34', 'player1', 100),
    Score('2022-09-23 09:22:34', 'player1', 99),
    Score('2022-09-23 09:22:34', 'player1', 98),
    Score('2022-09-23 09:22:34', 'player1', 97),
    Score('2022-09-23 09:22:34', 'player1', 96),
    Score('2022-09-23 09:22:34', 'player1', 95),
    Score('2022-09-23 09:22:34', 'player1', 94),
    Score('2022-09-23 09:22:34', 'player1', 93),
    Score('2022-09-23 09:22:34', 'player1', 92),
    Score('2022-09-23 09:22:34', 'player1', 91),
    Score('2022-09-23 09:22:34', 'player1', 90),
    Score('2022-09-23 09:22:34', 'player1', 89),
    Score('2022-09-23 09:22:34', 'player1', 88),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0xff, 11, 29, 49),
      body: Background(
      child: Center(
        child:
        Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child:Padding(
                padding: const EdgeInsets.only(top: 52),
                child: Text(
                  "Highscores".toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "fa-solid-900",
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
              ),
            ),
            Expanded(  flex: 4, child: ListScore(data: data)),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 18, bottom: 18),
                child: AppButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  text: "Back to menu",
                  isBold: true,
                  borderColor: const Color.fromARGB(0xff, 88, 209, 255),
                ),
              )
            ),
          ],
        ),
      ),
    )
    );
  }
}