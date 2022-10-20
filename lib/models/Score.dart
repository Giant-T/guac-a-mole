import 'package:flutter/material.dart';

class Score {
  final int id;
  String date;
  String name;
  int score;

  Score(this.id, this.date, this.name, this.score);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'date': date,
      'name': name,
      'score': score,
    };
  }
}
