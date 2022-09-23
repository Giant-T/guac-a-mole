import 'package:flutter/material.dart';
import 'package:guac_a_mole/pages/Loading.dart';
import 'package:guac_a_mole/pages/Home.dart';
import 'package:guac_a_mole/pages/Game.dart';
import 'package:guac_a_mole/pages/GameOver.dart';
import 'package:guac_a_mole/pages/About.dart';
import 'package:guac_a_mole/pages/PageScore.dart';
import 'package:guac_a_mole/pages/TableauScore.dart';
import 'package:guac_a_mole/pages/TapToStart.dart';
import 'package:guac_a_mole/pages/ValidationScore.dart';

void main() => runApp(MaterialApp(initialRoute: '/', routes: {
      '/': (context) => const Loading(key: Key('JonathanEstLeMeilleur')),
      '/home': (context) => Home(),
      '/taptostart': (context) => TapToStart(),
      '/game': (context) => Game(),
      '/gameover': (context) => GameOver(),
      '/about': (context) => About(),
      '/score': (context) => PageScore(),
      '/tableauscore': (context) => TableauScore(),
      '/validationscore': (context) => ValidationScore(),
    }));
