// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:product/data_base/data_base.dart';

// ignore: prefer-static-class
const _initWeightProduct = 100;

@immutable
class ProductDbModel {
  final int id;
  final int idCategory;
  final int weight;
  final bool isFavorite;

  final String category;
  final String product;
  final SourceModel source;
  final List<NutrientDbModel> nutrients;
  const ProductDbModel({
    this.id = -1,
    this.idCategory = -1,
    this.weight = _initWeightProduct,
    this.isFavorite = false,
    this.category = '',
    this.product = '',
    this.source = const SourceModel(),
    this.nutrients = const [],
  });

  ProductDbModel copyWith({
    int? id,
    int? idCategory,
    int? weight,
    bool? isFavorite,
    String? category,
    String? product,
    SourceModel? source,
    List<NutrientDbModel>? nutrients,
  }) {
    return ProductDbModel(
      id: id ?? this.id,
      idCategory: idCategory ?? this.idCategory,
      weight: weight ?? this.weight,
      isFavorite: isFavorite ?? this.isFavorite,
      category: category ?? this.category,
      product: product ?? this.product,
      source: source ?? this.source,
      nutrients: nutrients ?? this.nutrients,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'idCategory': idCategory,
      'weight': weight,
      'isFavorite': isFavorite,
      'category': category,
      'product': product,
      'source': source.toMap(),
      'nutrients': nutrients.map((x) => x.toMap()).toList(),
    };
  }

  factory ProductDbModel.fromMap(Map<String, dynamic> map) {
    return ProductDbModel(
      id: map['id'] as int,
      idCategory: map['idCategory'] as int,
      weight: map['weight'] as int,
      isFavorite: map['isFavorite'] as bool,
      category: map['category'] as String,
      product: map['product'] as String,
      source: SourceModel.fromMap(map['source'] as Map<String, dynamic>),
      nutrients: List<NutrientDbModel>.of(
        (map['nutrients'] as List<int>).map<NutrientDbModel>(
          (x) => NutrientDbModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductDbModel.fromJson(String source) =>
      ProductDbModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductModel(id: $id, idCategory: $idCategory, weight: $weight, isFavorite: $isFavorite, category: $category, product: $product, source: $source, nutrients: $nutrients)';
  }

  @override
  bool operator ==(covariant ProductDbModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.idCategory == idCategory &&
        other.weight == weight &&
        other.isFavorite == isFavorite &&
        other.category == category &&
        other.product == product &&
        other.source == source &&
        listEquals(other.nutrients, nutrients);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        idCategory.hashCode ^
        weight.hashCode ^
        isFavorite.hashCode ^
        category.hashCode ^
        product.hashCode ^
        source.hashCode ^
        nutrients.hashCode;
  }
}
