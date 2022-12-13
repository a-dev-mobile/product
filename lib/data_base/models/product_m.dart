// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:product/data_base/data_base.dart';

// ignore: prefer-static-class
const _initWeightProduct = 100;

@immutable
class ProductModel {
  final int id;
  final int weight;

  final String category;
  final String product;
  final SourceModel source;
  final List<NutrientModel> nutrients;
  const ProductModel({
    this.id = 0,
    this.weight = _initWeightProduct,
    this.category = '',
    this.product = '',
    this.source = const SourceModel(),
    this.nutrients = const [],
  });

  ProductModel copyWith({
    int? id,
    int? weight,
    String? category,
    String? product,
    SourceModel? source,
    List<NutrientModel>? nutrients,
  }) {
    return ProductModel(
      id: id ?? this.id,
      weight: weight ?? this.weight,
      category: category ?? this.category,
      product: product ?? this.product,
      source: source ?? this.source,
      nutrients: nutrients ?? this.nutrients,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'weight': weight,
      'category': category,
      'product': product,
      'source': source.toMap(),
      'nutrients': nutrients.map((x) => x.toMap()).toList(),
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] as int,
      weight: map['weight'] as int,
      category: map['category'] as String,
      product: map['product'] as String,
      source: SourceModel.fromMap(map['source'] as Map<String, dynamic>),
      nutrients: List<NutrientModel>.of(
        (map['nutrients'] as List<int>).map<NutrientModel>(
          (x) => NutrientModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductModel(id: $id, weight: $weight, category: $category, product: $product, source: $source, nutrients: $nutrients)';
  }

  @override
  bool operator ==(covariant ProductModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.weight == weight &&
        other.category == category &&
        other.product == product &&
        other.source == source &&
        listEquals(other.nutrients, nutrients);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        weight.hashCode ^
        category.hashCode ^
        product.hashCode ^
        source.hashCode ^
        nutrients.hashCode;
  }
}
