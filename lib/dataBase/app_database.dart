import 'dart:developer';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:product/bootstrap.dart';
import 'package:sqflite_sqlcipher/sqflite.dart';

const _nameDB = 'product_encrypted.db';

class AppDatabase {
  late String _path;

  Future<void> initDb() async {
    final databasesPath = await getDatabasesPath();
    _path = join(databasesPath, _nameDB);

    // Check if the database exists
    final exists = await databaseExists(_path);

    if (!exists) {
      // Should happen only the first time you launch your application
      log('Creating new copy from asset');

      // Make sure the parent directory exists
      try {
        await Directory(dirname(_path)).create(recursive: true);
      } catch (_) {}

      // Copy from asset
      final data = await rootBundle.load(join('assets', 'db', _nameDB));
      final List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      // Write and flush the bytes written
      await File(_path).writeAsBytes(bytes, flush: true);
    }
  }

  Future<Database> _openDB() async {
    return openDatabase(_path, password: APP_DB_PASSWORD);
  }

  Future<List<String>> getNameNutrient({required String locale}) async {
    final db = await _openDB();

    final sentences = <String>[];

    await db
        .rawQuery('''SELECT nutrient_$locale from nutrient''').then((value) {
      for (final element in value) {
        sentences.add(
          element['nutrient_$locale'].toString(),
        );
      }
    });

    await db.close();
    return sentences;
  }
}
