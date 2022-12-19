// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/cupertino.dart';

@immutable
class FavoriteUiModel {
  final String name;
  final int weight;
  final bool isFavorite;
  const FavoriteUiModel({
    this.name = '',
    this.weight = -1,
    this.isFavorite = false,
  });

  FavoriteUiModel copyWith({
    String? name,
    int? weight,
    bool? isFavorite,
  }) {
    return FavoriteUiModel(
      name: name ?? this.name,
      weight: weight ?? this.weight,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'weight': weight,
      'isFavorite': isFavorite,
    };
  }

  factory FavoriteUiModel.fromMap(Map<String, dynamic> map) {
    return FavoriteUiModel(
      name: map['name'] as String,
      weight: map['weight'] as int,
      isFavorite: map['isFavorite'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory FavoriteUiModel.fromJson(String source) =>
      FavoriteUiModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'FavoriteUiModel(name: $name, weight: $weight, isFavorite: $isFavorite)';

  @override
  bool operator ==(covariant FavoriteUiModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.weight == weight &&
        other.isFavorite == isFavorite;
  }

  @override
  int get hashCode => name.hashCode ^ weight.hashCode ^ isFavorite.hashCode;
}
