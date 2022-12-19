// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/cupertino.dart';

@immutable
class CategoryModel {
  final String name;
  final bool isActive;
  final int id;
  const CategoryModel({
    this.name = '',
    this.isActive = false,
    this.id = -1,
  });

  CategoryModel copyWith({
    String? name,
    bool? isActive,
    int? id,
  }) {
    return CategoryModel(
      name: name ?? this.name,
      isActive: isActive ?? this.isActive,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'isActive': isActive,
      'id': id,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      name: map['name'] as String,
      isActive: map['isActive'] as bool,
      id: map['id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) => CategoryModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  String toString() =>
      'SelectedCategoryModel(name: $name, isActive: $isActive, id: $id)';

  @override
  bool operator ==(covariant CategoryModel other) {
    if (identical(this, other)) return true;

    return other.name == name && other.isActive == isActive && other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ isActive.hashCode ^ id.hashCode;
}
