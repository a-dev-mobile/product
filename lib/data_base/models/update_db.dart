// ignore_for_file: lines_longer_than_80_chars
// // ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
// import 'dart:convert';

// import 'package:flutter/foundation.dart';

// @immutable
// class UpdateDb {
//   final List<int> delete_id_product;















  
//   const UpdateDb({
//     this.delete_id_product = const [],
//   });

//   UpdateDb copyWith({
//     List<int>? delete_id_product,
//   }) {
//     return UpdateDb(
//       delete_id_product: delete_id_product ?? this.delete_id_product,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'delete_id_product': delete_id_product,
//     };
//   }

//   factory UpdateDb.fromMap(Map<String, dynamic> map) {
//     return UpdateDb(
//       delete_id_product:
//           List<int>.of((map['delete_id_product'] as List<dynamic>).cast<int>()),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory UpdateDb.fromJson(String source) =>
//       UpdateDb.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() => 'UpdateDb(delete_id_product: $delete_id_product)';

//   @override
//   bool operator ==(covariant UpdateDb other) {
//     if (identical(this, other)) return true;

//     return listEquals(other.delete_id_product, delete_id_product);
//   }

//   @override
//   int get hashCode => delete_id_product.hashCode;
// }
// /* 
// {
//   "delete_id_product": [7258, 11111],
//   "update_product": [
//     {
//       "id_product": 7259,
//       "ru_product_name": "Абсент update 999",
//       "en_product_name": "Absinthe ",
//       "en_category_name": "Alcoholic beverages",
//       "ru_category_name": "Напитки алкогольные",
//       "en_source_name": "Internet",
//       "ru_source_name": "Интернет",
//       "carbohydrates": 8.8,
//       "calorie": 171.0
//     },
//     {
//       "id_product": 7260,
//       "ru_product_name": "Абсент new",
//       "en_product_name": "Absinthe ",
//       "en_category_name": "Alcoholic beverages",
//       "ru_category_name": "Напитки алкогольные",
//       "en_source_name": "Internet",
//       "ru_source_name": "Интернет",
//       "carbohydrates": 8.8,
//       "calorie": 171.0
//     },
//     {
//       "id_product": 7261,
//       "ru_product_name": "Абсент new 22",
//       "en_product_name": "Absinthe ",
//       "en_category_name": "Alcoholic beverages",
//       "ru_category_name": "Напитки алкогольные",
//       "en_source_name": "Internet",
//       "ru_source_name": "Интернет",
//       "carbohydrates": 8.8,
//       "calorie": 171.0
//     },
//     {
//       "id_product": 7262,
//       "ru_product_name": "Абсент new 33",
//       "en_product_name": "Absinthe ",
//       "en_category_name": "Alcoholic beverages",
//       "ru_category_name": "Напитки алкогольные",
//       "en_source_name": "Internet",
//       "ru_source_name": "Интернет",
//       "carbohydrates": 8.8,
//       "calorie": 171.0
//     }
//   ]
// }



//  */
