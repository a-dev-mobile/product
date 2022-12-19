// ignore_for_file: lines_longer_than_80_chars

import 'dart:developer';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

import 'package:path/path.dart';



import 'package:product/core/storage/local_storage.dart';
import 'package:product/core/utils/utils.dart';
import 'package:product/data_base/data_base.dart';
import 'package:product/feature/common/enum.dart';
import 'package:product/global_const.dart';
import 'package:sqflite_sqlcipher/sqflite.dart';

class AppDatabase {
  AppDatabase({
    required LocalStorage storage,
  }) : _storage = storage;

  final LocalStorage _storage;

  String _fullPathFileDb = '';

  Future<void> copyDb() async {
    const nameDb = 'product.dbe';

    final databasesPath = await getDatabasesPath();
    _fullPathFileDb = join(databasesPath, nameDb);

    final db = await _openDB();
    final currentVersionDb = await db.getVersion();
    final newVersionDb = await _storage.getDbVersion();

    if (currentVersionDb < newVersionDb) {
      await db.close();

      //delete the old database so you can copy the new one
      await deleteDatabase(_fullPathFileDb);

      // ignore: unused_local_variable
      final directory =
          await Directory(dirname(_fullPathFileDb)).create(recursive: true);

      final dbFile = FirebaseStorage.instance.ref().child('db').child(nameDb);

      final downloadTask = dbFile.writeToFile(File(_fullPathFileDb));

// ignore: avoid-ignoring-return-values
      downloadTask.snapshotEvents.listen((taskSnapshot) async {
        switch (taskSnapshot.state) {
          case TaskState.running:
            log('TaskState.running');
            break;
          case TaskState.paused:
            log('TaskState.paused');
            break;

          case TaskState.canceled:
            log('TaskState.canceled');
            break;
          case TaskState.error:
            log('TaskState.error');
            break;

          case TaskState.success:
            log('TaskState.success');

            final db = await _openDB();

            await db.setVersion(newVersionDb);

            await db.close();
            break;
        }
      });
    }
  }

  Future<Database> _openDB() {
    return openDatabase(_fullPathFileDb, password: APP_DB_PASSWORD);
  }

// *******************************

  Future<SearchModel> getProduct({
    required String find,
    required String locale,
  }) async {
    final products = <ProductDbModel>[];
    final categories = <CategoryDbModel>[];
    //  getting favorite product and use only id product
    final favorites = await _storage.getFavorite();
    final favoritesIdProduct = favorites.map((v) => v.idProduct).toList();

    final listEnumNutrient = [
      NutrientName.calorie.name,
      NutrientName.carbohydrates.name,
      NutrientName.proteins.name,
      NutrientName.water.name,
      NutrientName.fats.name,
      NutrientName.k_potassium.name,
      NutrientName.na_sodium.name,
    ];

    // делаем  название колонок
    final buffer = StringBuffer();
    for (final v in listEnumNutrient) {
      buffer
        ..write('f.')
        ..write(v)
        ..write(', ');

      // = '$listNutrient f.$v,';
    }
    final listNutrient = buffer.toString().removeLastChars().removeLastChars();

    final db = await _openDB();

    final findClean = find.trim()..replaceAll(RegExp(' +'), ' ');
    final listFind = findClean.split(' ');

    final query = '''
SELECT  
p.id as idProduct, 

s.${locale}_name as sourceName, 
s.${locale}_abbrev as sourceAbbrev, 
s.id as sourceId,

c.id as categoryId, 
c.${locale}_name as categoryName, 



p.${locale}_name as product, 

$listNutrient 

FROM food as f

JOIN category as c 
on f.id_category = c.id

JOIN source as s 
on f.id_source = s.id

JOIN product as p 
on p.id=f.id_product

WHERE ${_getProductWhereQuery(listFind, locale)} 


''';
// I make a request to receive all nutrients
    final dbNutrient = await db.rawQuery(
      '''
SELECT 
nutrient, 
${locale}_name as name, 
id_type as idType, 
${locale}_unit as unit from nutrient''',
    );

    final listAllNutrient = <NutrientDbModel>[];

    for (var i = 0; i < dbNutrient.length; i++) {
      final row = dbNutrient[i];
      listAllNutrient.add(
        NutrientDbModel(
          name: row['name'].toString(),
          unit: row['unit'].toString(),
          value: '',
          valueBase: '',
          idType: (row['idType'] as int?) ?? 0,
          nutrient: row['nutrient'].toString(),
        ),
      );
    }

    var sourceName = '';
    var sourceAbbrev = '';
    var sourceId = -1;

    var categoryName = '';
    var categoryId = -1;
    var product = '';
    var idProduct = -1;

    final dbProduct = await db.rawQuery(query);

    for (var i = 0; i < dbProduct.length; i++) {
      final row = dbProduct[i];

      final nutrients = <NutrientDbModel>[];
      // data for the main product parameters
      sourceName = row['sourceName'].toString();
      sourceAbbrev = row['sourceAbbrev'].toString();
      sourceId = int.parse(row['sourceId'].toString());

      categoryName = row['categoryName'].toString();
      categoryId = int.parse(row['categoryId'].toString());
      product = row['product'].toString();
      idProduct = int.parse(row['idProduct'].toString());

      // список всех категорий
      categories.add(CategoryDbModel(id: categoryId, name: categoryName));

      // nutrient enumeration
      for (var i = 0; i < listEnumNutrient.length; i++) {
        final nutrientItemEnum = listEnumNutrient[i];
        final value = row[nutrientItemEnum].toString();
        if (value == 'null' || value.isEmpty) continue;

        if (row.keys.contains(nutrientItemEnum)) {
          // pulling the right one out of the list nutrient
          final findNutrient =
              listAllNutrient.firstWhere((e) => e.nutrient == nutrientItemEnum);

          final valueFormat = MyNumberFormat.nutrient(double.parse(value));

          //  filling out a new
          nutrients.add(
            NutrientDbModel(
              name: findNutrient.name,
              unit: findNutrient.unit,
              value: valueFormat,
              idType: findNutrient.idType,
              nutrient: findNutrient.nutrient,
              valueBase: valueFormat,
            ),
          );
        }
      }

      products.add(
        ProductDbModel(
          category: categoryName,
          idCategory: categoryId,
          product: product,
          id: idProduct,
          // если содержиться в списке значит favorite
          isFavorite: favoritesIdProduct.contains(idProduct),
          source: SourceModel(
            abbrev: sourceAbbrev,
            idSource: sourceId,
            name: sourceName,
          ),
          nutrients: nutrients,
        ),
      );
    }

    await db.close();

    // category in uniq
    return SearchModel(
      categories: categories.toSet().toList(),
      products: products,
    );
  }

  String _getProductWhereQuery(List<String> listFind, String locale) {
    var where = '';

    for (var i = 0; i < listFind.length; i++) {
      final s = listFind[i];

      where = '''
            $where 
    (
    p.${locale}_name LIKE "%${s.toLowerCase()}%" 
    OR
    p.${locale}_name LIKE "%${s.toCapitalized()}%"
    )''';
      // если последний проход and не добавляем
      if (i != listFind.length - 1) {
        where = '$where AND ';
      }
    }

    return where;
  }
}
