import 'package:flutter/material.dart';
import '../components/Background.dart';
import '../components/GameHeader.dart';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  State<Game> createState() => _Game();
}

class _Game extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0xff, 11, 29, 49),
      body: Background(
        child: GameHeader(bonus: 0, score: 0, life: 3),
      ),
    );
  }
}
