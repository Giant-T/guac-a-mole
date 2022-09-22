import 'package:flutter/material.dart';
import 'package:guac_a_mole/components/AppButtonSonarDonut.dart';
import '../components/Background.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(0xff, 11, 29, 49),
        body: Background(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Divider(
                      color: Colors.white,
                    ),
                    Text(
                      "About".toUpperCase(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "fa-solid-900",
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut varius sapien, a porta neque. Donec ullamcorper odio non massa hendrerit pulvinar. Curabitur felis lacus, ullamcorper ac bibendum eget, congue eget justo. Curabitur porta velit quam. Pellentesque elementum ut nulla sit amet tincidunt. Curabitur ac elementum dui. Ut eget odio tortor. Nam tempor porttitor lectus, id varius magna. Quisque ut arcu sit amet metus egestas imperdiet.",
                      style: TextStyle(
                        fontFamily: "fa-solid-900",
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const Divider(
                      color: Colors.white,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      child: AppButtonSonarDonut(
                          size: 120,
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ),
                  ]),
            ),
          ),
          //backgroundColor
        ));
  }
}
