// ignore_for_file: lines_longer_than_80_chars

import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

import 'package:path_provider/path_provider.dart';

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

  String _fullPath = '';

  Future<void> copyDb() async {
    // Check if the database exists
    final path = await getApplicationDocumentsDirectory();
    final nameDB = await _storage.getDbName();
    //  _locale = await _storage.getLocale();

    _fullPath = '${path.path}/$nameDB';
    final exists = await databaseExists(_fullPath);

    if (!exists) {
      final storageRef = FirebaseStorage.instance.ref().child('/db/$nameDB');

      final file = File(_fullPath);

      final _ = storageRef.writeToFile(file);
    }
  }

  Future<Database> _openDB() {
    return openDatabase(_fullPath, password: APP_DB_PASSWORD);
  }

// *******************************

  Future<SearchModel> getProduct({
    required String find,
    required String locale,
  }) async {
    final products = <ProductModel>[];
    final categories = <CategoryModel>[];

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
p.id as id, 

s.name_$locale as sourceName, 
s.abbrev_$locale as sourceAbbrev, 
s.id_source as sourceId,

c.id_category as categoryId, 
c.name_$locale as categoryName, 



p.name_$locale as product, 

$listNutrient 

FROM food as f

JOIN category as c 
on f.id_category = c.id_category

JOIN source as s 
on f.id_source = s.id_source

JOIN product as p 
on p.id_product=f.id_product

WHERE ${_getProductWhereQuery(listFind, locale)} 


''';
// I make a request to receive all nutrients
    final dbNutrient = await db.rawQuery(
      '''
SELECT 
nutrient, 
name_$locale as name, 
id_type_nutrient as idType, 
unit_$locale as unit from nutrient''',
    );

    final listAllNutrient = <NutrientModel>[];

    for (var i = 0; i < dbNutrient.length; i++) {
      final row = dbNutrient[i];
      listAllNutrient.add(
        NutrientModel(
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
    var id = -1;

    final dbProduct = await db.rawQuery(query);

    for (var i = 0; i < dbProduct.length; i++) {
      final row = dbProduct[i];

      final nutrients = <NutrientModel>[];
      // data for the main product parameters
      sourceName = row['sourceName'].toString();
      sourceAbbrev = row['sourceAbbrev'].toString();
      sourceId = int.parse(row['sourceId'].toString());

      categoryName = row['categoryName'].toString();
      categoryId = int.parse(row['categoryId'].toString());
      product = row['product'].toString();
      id = int.parse(row['id'].toString());

      // список всех категорий
      categories.add(CategoryModel(id: categoryId, name: categoryName));

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
            NutrientModel(
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
        ProductModel(
          category: categoryName,
          idCategory: categoryId,
          product: product,
          source: SourceModel(
            abbrev: sourceAbbrev,
            idSource: sourceId,
            name: sourceName,
          ),
          nutrients: nutrients,
          id: id,
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
    p.name_$locale LIKE "%${s.toLowerCase()}%" 
    OR
    p.name_$locale LIKE "%${s.toCapitalized()}%"
    )''';
      // если последний проход and не добавляем
      if (i != listFind.length - 1) {
        where = '$where AND ';
      }
    }

    return where;
  }
}
