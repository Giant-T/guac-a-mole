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
          "CREATE TABLE score(id INTEGER PRIMARY KEY, time TEXT, name TEXT, score INTEGER)",
        );
      },
      version: 1,
    );
    return database;
  }

  static Future<void> insertScore(Score score) async {
      final Database db = await database;
      await db.insert(
        'score',
        score.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
  }

  // A method that retrieves all the dogs from the dogs table.

  static Future<List<Score>> scores() async {
    final Database db = await database;
    final List<Map<String, dynamic>> maps = await db.query('score');
    return List.generate(maps.length, (i) {
      return Score(
        maps[i]['id'],
        maps[i]['time'],
        maps[i]['name'],
        maps[i]['score'],
      );
    });
  }

  //a method update score
  static Future<void> updateScore(Score score) async {
    final db = await database;
    await db.update(
      'score',
      score.toMap(),
      where: "id = ?",
      whereArgs: [score.id],
    );
  }

  //a method delete score
  static Future<void> deleteScore(int id) async {
    final db = await database;
    await db.delete(
      'score',
      where: "id = ?",
      whereArgs: [id],
    );
  }

}