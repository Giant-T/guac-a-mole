import 'package:flutter/material.dart';
import 'package:guac_a_mole/components/ListScore.dart';
import 'package:guac_a_mole/components/AppButton.dart';
import 'package:guac_a_mole/components/Background.dart';
import 'package:guac_a_mole/models/Score.dart';
import 'package:guac_a_mole/database/Score_database.dart';

class TableauScore extends StatelessWidget {
  List<Score> data = [];

  Future<void> getData() async {
    data = await ScoreDatabase.scores();
  }

  Future<void> deleteFromList(int index) async {
    await ScoreDatabase.deleteScore(data[index].id);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getData(),
        builder: ((context, snapshot) => Scaffold(
            backgroundColor: const Color.fromARGB(0xff, 11, 29, 49),
            body: Background(
              child: Center(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Padding(
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
                    Expanded(
                        flex: 4,
                        child: ListScore(
                            data: data, deleteFromList: deleteFromList)),
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
                            highlightColor:
                                const Color.fromARGB(0xff, 88, 209, 255),
                          ),
                        )),
                  ],
                ),
              ),
            ))));
  }
}
