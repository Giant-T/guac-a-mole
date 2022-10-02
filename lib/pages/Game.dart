import 'package:async/async.dart';

import 'package:flutter/material.dart';
import 'package:guac_a_mole/pages/GameOver.dart';
import '../components/Background.dart';
import '../components/GameHeader.dart';
import 'package:guac_a_mole/components/AppButtonSonarDonut.dart';
import 'dart:math';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  State<Game> createState() => _Game();
}

class _Game extends State<Game> {
  int bonus = 0;
  int score = 0;
  int life = 3;
  late RestartableTimer timer;

  @override
  void initState() {
    timer = RestartableTimer(const Duration(seconds: 2), missCircle);
    super.initState();
  }

  void getCircle() {
    timer.reset();
    setState(() {
      bonus = bonus + 1;
      score = score + 10 * bonus;
    });
  }

  void missCircle() {
    timer.reset();
    setState(() {
      bonus = 0;
      life = life - 1;
    });

    if (life <= 0) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => GameOver(score)));
      timer.cancel();
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0xff, 11, 29, 49),
      body: Stack(
        children: [
          Background(color: const Color.fromARGB(127, 11, 29, 49),child: GameHeader(bonus: bonus, score: score, life: life)),
          Positioned(
            top: Random().nextInt(
                    (MediaQuery.of(context).size.height - 130).round()) +
                65,
            left: Random()
                .nextInt((MediaQuery.of(context).size.width - 65).round())
                .toDouble(),
            child: AppButtonSonarDonut(
              size: 100,
              color: const Color.fromARGB(0xff, 0x58, 0xD1, 0xFF),
              onPressed: () {
                getCircle();
              },
            ),
          ),
        ],
      ),
    );
  }
}
