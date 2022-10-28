import 'package:flutter/material.dart';
import 'package:guac_a_mole/components/AppButton.dart';
import 'package:guac_a_mole/components/AppTextForm.dart';
import 'package:guac_a_mole/components/Background.dart';
import 'package:guac_a_mole/database/Score_database.dart';
import 'package:guac_a_mole/models/Score.dart';
import 'package:guac_a_mole/utils/utils.dart';

class EditScore extends StatelessWidget {
  final Score score;

  const EditScore({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(0xff, 11, 29, 49),
        body: Background(
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(children: <Widget>[
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          }, // Image tapped
                          child: const Image(
                              image: AssetImage('images/backIcon.png'),
                              width: 60,
                              height: 60)),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Back'.toUpperCase(),
                            style: const TextStyle(
                              color: Color.fromARGB(0xff, 88, 209, 255),
                              fontSize: 20,
                              decoration: TextDecoration.underline,
                            )),
                      ),
                    ]),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Edit score".toUpperCase(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "fa-solid-900",
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                ),
                AppTextForm(
                    labeltext: "Date:",
                    initialValue: score.date,
                    onChanged: (value) => score.date = value),
                AppTextForm(
                    labeltext: "Name:",
                    initialValue: score.name,
                    onChanged: (value) => score.name = value),
                AppTextForm(
                    labeltext: "Score:",
                    initialValue: score.score.toString(),
                    onChanged: (value) =>
                        score.score = isNumeric(value) ? int.parse(value) : 0),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: AppButton(
                    onPressed: () {
                      ScoreDatabase.updateScore(score);

                      Navigator.pop(context);
                    },
                    text: "Update score",
                    isBold: true,
                    highlightColor: const Color.fromARGB(0xff, 88, 209, 255),
                  ),
                )
              ],
            ),
          )),
        ));
  }
}
