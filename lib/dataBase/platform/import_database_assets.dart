import 'package:drift/drift.dart';
import 'package:flutter/services.dart' show  rootBundle;


Future<Uint8List> importDbFromAssets() async {
  final blob = await rootBundle.load('assets/db/food.db');

  final buffer = blob.buffer;

  return buffer.asUint8List(blob.offsetInBytes, blob.lengthInBytes);
}
