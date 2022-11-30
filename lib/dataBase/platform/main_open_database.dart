import 'package:drift/backends.dart';

// ignore: always_use_package_imports
import 'open_database_stub.dart'
    if (dart.library.io) 'open_device_database.dart'
    if (dart.library.js) 'open_web_database.dart';

QueryExecutor  platformOpenDatabase() => openDatabase();
