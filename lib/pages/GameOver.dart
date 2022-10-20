import 'package:flutter/material.dart';
import 'package:guac_a_mole/components/Background.dart';
import 'package:guac_a_mole/components/Gradiant.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:guac_a_mole/components/AppTextForm.dart';
import 'package:guac_a_mole/components/AppButton.dart';
import 'package:guac_a_mole/components/AppButtonSonarDonut.dart';
import 'package:guac_a_mole/database/Score_database.dart';
import 'package:guac_a_mole/models/Score.dart';

class GameOver extends StatelessWidget {
  final int score;
  String name = "";

  GameOver ([this.score = 0]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(0xff, 11, 29, 49),
        body: Background(
          child: Gradiant(
            r: 255,
            g: 19,
            b: 68,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Image(
                        image: Svg('images/bugIcon.svg', size: Size(50, 50))),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Game Over".toUpperCase(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "fa-solid-900",
                          color: Colors.white,
                          fontSize: 28,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "You lost".toUpperCase(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "fa-solid-900",
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Score".toUpperCase(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "fa-solid-900",
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        score.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "fa-solid-900",
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "TRY AGAIN?".toUpperCase(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "fa-solid-900",
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      child: AppButtonSonarDonut(
                          size: 120,
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pop(context);
                            Navigator.pop(context);
                          }),
                    ),
                    AppTextForm(labeltext: "Name:", onChanged: (value) => name = value),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: AppButton(
                        onPressed: () {
                          //TODO
                          DateTime date = DateTime.now();
                          ScoreDatabase.insertScore(Score(
                              0,
                              date.toString(),
                              name,
                              score
                          ));
                          Navigator.pop(context);
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                        text: "Validate Score",
                        isBold: true,
                        highlightColor:
                        const Color.fromARGB(0xff, 88, 209, 255),
                      ),
                    )
                  ]),
            ),
          ),
        ));
  }
}

