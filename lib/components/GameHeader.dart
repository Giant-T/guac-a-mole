import 'package:flutter/material.dart';

class GameHeader extends StatefulWidget {
  final int score;
  final int life;
  final int bonus;
  final Widget child;

  const GameHeader(
      {required this.score,
      required this.life,
      required this.bonus,
      required this.child,
      super.key});


  @override
  State<GameHeader> createState() => _GameHeader();
}

class _GameHeader extends State<GameHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 100,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
          stops: [0.5, 0.8, 1],
          colors: [
            Color.fromARGB(255, 11, 29, 49),
            Color.fromARGB(150, 11, 29, 49),
            Color.fromARGB(0, 11, 29, 49)
          ],
        )),
        child: Row(
          children: <Widget>[
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "BONUS",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "fa-solid-900",
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
                Text(
                  widget.bonus.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "fa-solid-900",
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "SCORE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "fa-solid-900",
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
                Text(
                  widget.score.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "fa-solid-900",
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "LIFE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "fa-solid-900",
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
                Text(
                  widget.life.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "fa-solid-900",
                    color: Color.fromARGB(0xff, 0x58, 0xD1, 0xFF),
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    ),
    widget.child
    ]);
  }
}
