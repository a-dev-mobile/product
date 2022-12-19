// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars
import 'dart:convert';

import 'package:flutter/foundation.dart';

@immutable
class CategoryDbModel {
  final String name;
  final int id;

  const CategoryDbModel({
    this.name = '',
    this.id = 0,
  });

  CategoryDbModel copyWith({
    String? name,
    int? id,
  }) {
    return CategoryDbModel(
      name: name ?? this.name,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'id': id,
    };
  }

  factory CategoryDbModel.fromMap(Map<String, dynamic> map) {
    return CategoryDbModel(
      name: map['name'] as String,
      id: map['id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryDbModel.fromJson(String source) =>
      CategoryDbModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CategoryModel(name: $name, id: $id)';

  @override
  bool operator ==(covariant CategoryDbModel other) {
    if (identical(this, other)) return true;

    return other.name == name && other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode;
}
