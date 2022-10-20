import 'package:flutter/material.dart';
import 'package:guac_a_mole/components/AppButton.dart';
import 'package:guac_a_mole/components/AppTextForm.dart';
import 'package:guac_a_mole/components/Background.dart';

class EditScore extends StatelessWidget {
  final String date;
  final String name;
  final String score;

  const EditScore(
      {Key? key, required this.date, required this.name, required this.score})
      : super(key: key);

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
                    labeltext: "Date:", hintText: "DD/MM/YYYY", value: date),
                AppTextForm(labeltext: "Name:", value: name),
                AppTextForm(labeltext: "Score:", value: score),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: AppButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    text: "Validate Score",
                    isBold: true,
                    highlightColor: const Color.fromARGB(0xff, 88, 209, 255),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                ),
                const Text(
                  "Score exist:",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "fa-solid-900",
                    fontSize: 22,
                  ),
                )
              ],
            ),
          )),
        ));
  }
}
