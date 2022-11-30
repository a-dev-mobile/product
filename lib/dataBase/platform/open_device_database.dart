import 'dart:io' show File, Platform;

import 'package:product/dataBase/platform/import_database_assets.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

QueryExecutor openDatabase() {
  return LazyDatabase(() async {
    final dbFilepath = await _dbFilepath;
    final dbFile = File(dbFilepath);
    if (!dbFile.existsSync()) {
      final bytes = await importDbFromAssets();

      await dbFile.writeAsBytes(bytes);
    }

    return NativeDatabase(dbFile);
  });
}

Future<String> get _dbFilepath async {
  String dir;
  dir = Platform.isIOS
      ? (await getApplicationSupportDirectory()).path
      : (await getTemporaryDirectory()).path;

  return join(dir, 'food.db');
}
