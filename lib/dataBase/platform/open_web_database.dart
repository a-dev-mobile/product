import 'package:product/dataBase/platform/import_database_assets.dart';
import 'package:drift/drift.dart';
import 'package:drift/web.dart';

// QueryExecutor openDatabase() async {
//   return WebDatabase.withStorage(
//      DriftWebStorage.indexedDb('db'),
//     initializer: importDbFromAssets,
//     logStatements: true,
//   );
//   // return WebDatabase.withStorage(
//     // DriftWebStorage.indexedDb('db', migrateFromLocalStorage: true),
//   // );
//   // return WebDatabase('db', initializer: importDbFromAssets,logStatements: true);
// }

QueryExecutor openDatabase() {
  return WebDatabase.withStorage(
    DriftWebStorage.indexedDb('db'),
    logStatements: true,
    initializer: () async {
      return importDbFromAssets();
    },
  );
}
