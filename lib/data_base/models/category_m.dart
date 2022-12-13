// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars
import 'dart:convert';

import 'package:flutter/foundation.dart';

@immutable
class CategoryModel {
  final String name;
  final int id;


  const CategoryModel({
    this.name = '',
    this.id = 0,
  });

  CategoryModel copyWith({
    String? name,
    int? id,
  }) {
    return CategoryModel(
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

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      name: map['name'] as String,
      id: map['id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) =>
      CategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CategoryModel(name: $name, id: $id)';

  @override
  bool operator ==(covariant CategoryModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode;
}
