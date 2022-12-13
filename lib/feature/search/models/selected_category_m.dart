// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/cupertino.dart';

@immutable
class SelectedCategoryModel {
  final String name;
  final bool isActive;
  const SelectedCategoryModel({
    this.name = '',
    this.isActive = false,
  });

  SelectedCategoryModel copyWith({
    String? name,
    bool? isActive,
  }) {
    return SelectedCategoryModel(
      name: name ?? this.name,
      isActive: isActive ?? this.isActive,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'isActive': isActive,
    };
  }

  factory SelectedCategoryModel.fromMap(Map<String, dynamic> map) {
    return SelectedCategoryModel(
      name: map['name'] as String,
      isActive: map['isActive'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory SelectedCategoryModel.fromJson(String source) =>
      SelectedCategoryModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  String toString() => 'Category(name: $name, isActive: $isActive)';

  @override
  bool operator ==(covariant SelectedCategoryModel other) {
    if (identical(this, other)) return true;

    return other.name == name && other.isActive == isActive;
  }

  @override
  int get hashCode => name.hashCode ^ isActive.hashCode;
}
