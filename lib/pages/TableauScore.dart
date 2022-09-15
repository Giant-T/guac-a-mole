import 'package:flutter/material.dart';
import 'package:guac_a_mole/components/ListScore.dart';

class TableauScore extends StatelessWidget {

  final List<Score> data = <Score>[
    Score('15/09/2022 11:04:11', 'John', 100),
    Score('15/09/2022 11:04:11', 'Paul', 200),
    Score('15/09/2022 11:04:11', 'George', 300),
    Score('15/09/2022 11:04:11', 'Ringo', 400),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Center(
        child: ListScore(entries: data),
      ),
    );
  }
}