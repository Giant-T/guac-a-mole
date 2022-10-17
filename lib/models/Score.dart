import 'package:flutter/material.dart';

class Score {
  final int id;
  final String time;
  final String name;
  final int score;

  Score(this.id, this.time, this.name, this.score);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'time': time,
      'name': name,
      'score': score,
    };
  }

}

