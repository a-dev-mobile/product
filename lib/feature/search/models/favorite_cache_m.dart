// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars
import 'dart:convert';

import 'package:flutter/cupertino.dart';

@immutable
class FavoriteCacheModel {
  final int idProduct;
  final String name;
  final int weight;
  final bool isFavorite;

  const FavoriteCacheModel({
    this.idProduct = -1,
    this.name = '',
    this.weight = -1,
    this.isFavorite = false,
  });

  FavoriteCacheModel copyWith({
    int? idProduct,
    String? name,
    int? weight,
    bool? isFavorite,
  }) {
    return FavoriteCacheModel(
      idProduct: idProduct ?? this.idProduct,
      name: name ?? this.name,
      weight: weight ?? this.weight,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idProduct': idProduct,
      'name': name,
      'weight': weight,
      'isFavorite': isFavorite,
    };
  }

  factory FavoriteCacheModel.fromMap(Map<String, dynamic> map) {
    return FavoriteCacheModel(
      idProduct: map['idProduct'] as int,
      name: map['name'] as String,
      weight: map['weight'] as int,
      isFavorite: map['isFavorite'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory FavoriteCacheModel.fromJson(String source) =>
      FavoriteCacheModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'FavoriteCacheModel(idProduct: $idProduct, name: $name, weight: $weight, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(covariant FavoriteCacheModel other) {
    if (identical(this, other)) return true;

    return other.idProduct == idProduct &&
        other.name == name &&
        other.weight == weight &&
        other.isFavorite == isFavorite;
  }

  @override
  int get hashCode {
    return idProduct.hashCode ^
        name.hashCode ^
        weight.hashCode ^
        isFavorite.hashCode;
  }
}
