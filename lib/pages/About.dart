import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 140.0, bottom: 20.0),
                  child: Container(
                      child: Divider(
                        color: Colors.white,
                        height: 10,
                      )),
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
                  style: const TextStyle(
                    fontFamily: "fa-solid-900",
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 100.0),
                  child: Container(
                      child: Divider(
                        color: Colors.white,
                        height: 10,
                      )),
                ),
              ]),
        ),
      ),
      //backgroundColor
      backgroundColor: const Color.fromARGB(0xff, 11, 29, 49),
    );
  }
}