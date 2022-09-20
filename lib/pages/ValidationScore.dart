import 'package:flutter/material.dart';
import 'package:guac_a_mole/components/AppButton.dart';
import 'package:guac_a_mole/components/AppTextForm.dart';

class ValidationScore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0xff, 11, 29, 49),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Column(children: <Widget>[
                    GestureDetector(
                    onTap: () {Navigator.pop(context);}, // Image tapped
                        child: Image(image: AssetImage('images/backIcon.png'), width: 60, height: 60)
                    ),
                    TextButton(
                      onPressed: () {Navigator.pop(context);},
                      child: Text('Back'.toUpperCase(), style: const TextStyle(
                        color: Color.fromARGB(0xff, 88, 209, 255),
                        fontSize: 20,
                        decoration: TextDecoration.underline,
                      )),
                    ),
                  ]),
                ],
              ),
              Image(image: AssetImage('images/validate.png'), width: 100, height: 100),
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
              Divider(
                color: Colors.white,
              ),
              AppTextForm(labeltext: "Date:", hintText: "DD/MM/YYYY"),
              AppTextForm(labeltext: "Name:"),
              AppTextForm(labeltext: "Score:"),
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
              ),
              Divider(
                color: Colors.white,
              ),
              Text(
                "Score exist:",
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: "fa-solid-900",
                  fontSize: 22,
                ),
              )

            ],
          ),
        )
      ),

    );
  }
}