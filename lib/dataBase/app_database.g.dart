// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  Selectable<GetAllProductResult> getAllProduct() {
    return customSelect(
        'SELECT f.id, f.name, s.name AS source, c.name AS category FROM food AS f JOIN source AS s ON s.id_source = f.id_source JOIN category AS c ON f.id_category = c.id_category',
        variables: [],
        readsFrom: {}).map((QueryRow row) {
      return GetAllProductResult(
        id: row.readNullable<String>('id'),
        name: row.readNullable<String>('name'),
        source: row.readNullable<String>('source'),
        category: row.readNullable<String>('category'),
      );
    });
  }

  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [];
}

class GetAllProductResult {
  final String? id;
  final String? name;
  final String? source;
  final String? category;
  GetAllProductResult({
    this.id,
    this.name,
    this.source,
    this.category,
  });
}
