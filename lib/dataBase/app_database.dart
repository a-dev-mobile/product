import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite_sqlcipher/sqflite.dart';
import 'package:sqflite_sqlcipher/sqlite_api.dart';

const _nameDB = "food_encrypted.db";

class AppDatabase {
  late String _path;

  Future<void> initDb() async {
    var databasesPath = await getDatabasesPath();
    _path = join(databasesPath, _nameDB);

    // Check if the database exists
    var exists = await databaseExists(_path);

    if (!exists) {
      // Should happen only the first time you launch your application
      print("Creating new copy from asset");

      // Make sure the parent directory exists
      try {
        await Directory(dirname(_path)).create(recursive: true);
      } catch (_) {}

      // Copy from asset
      ByteData data = await rootBundle.load(join("assets", "db", _nameDB));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      // Write and flush the bytes written
      await File(_path).writeAsBytes(bytes, flush: true);
    }
  }

  Future<List<String>> getNameRuNutrient() async {
    final db = await openDatabase(_path, password: '123');

    List<String> sentences = [];

    await db.rawQuery("""SELECT nutrient_ru from nutrient""").then((value) {
      print(value);
      value.forEach((element) {
        sentences.add(
          element["nutrient_ru"] as String,
        );
      });
    });

    db.close();
    return sentences;
  }
}
