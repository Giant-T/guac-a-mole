import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:guac_a_mole/models/Score.dart';

class ScoreDatabase {
  static Future<Database> get database async {
    WidgetsFlutterBinding.ensureInitialized();
    final Future<Database> database = openDatabase(
      join(await getDatabasesPath(), 'score_database.db'),
      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE score(id INTEGER PRIMARY KEY AUTOINCREMENT, date TEXT, name TEXT, score INTEGER)",
        );
      },
      version: 1,
    );
    return database;
  }

  static Future<void> insertScore(Score score) async {
      final Database db = await database;
      Map<String, dynamic> values = score.toMap();
      values.remove('id');

      await db.insert(
        'score',
        values,
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
  }

  static Future<List<Score>> scores() async {
    final Database db = await database;
    final List<Map<String, dynamic>> maps = await db.query('score');
    List<Score> result = [];

    for (Map map in maps) {
      result.add(Score(map['id'], map['time'], map['name'], map['score']));
    }

    return result;
  }

  static Future<void> updateScore(Score score) async {
    final db = await database;
    await db.update(
      'score',
      score.toMap(),
      where: "id = ?",
      whereArgs: [score.id],
    );
  }

  static Future<void> deleteScore(int id) async {
    final db = await database;
    await db.delete(
      'score',
      where: "id = ?",
      whereArgs: [id],
    );
  }
}
