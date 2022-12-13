// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars
import 'dart:convert';

import 'package:flutter/cupertino.dart';

@immutable
class NutrientModel {
  final String name;
  final String value;
  final String valueBase;
  final String unit;
  final int idType;
  final String nutrient;
  const NutrientModel({
    required this.name,
    required this.value,
    required this.valueBase,
    required this.unit,
    required this.idType,
    required this.nutrient,
  });

  NutrientModel copyWith({
    String? name,
    String? value,
    String? valueBase,
    String? unit,
    int? idType,
    String? nutrient,
  }) {
    return NutrientModel(
      name: name ?? this.name,
      value: value ?? this.value,
      valueBase: valueBase ?? this.valueBase,
      unit: unit ?? this.unit,
      idType: idType ?? this.idType,
      nutrient: nutrient ?? this.nutrient,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
      'valueBase': valueBase,
      'unit': unit,
      'idType': idType,
      'nutrient': nutrient,
    };
  }

  factory NutrientModel.fromMap(Map<String, dynamic> map) {
    return NutrientModel(
      name: map['name'] as String,
      value: map['value'] as String,
      valueBase: map['valueBase'] as String,
      unit: map['unit'] as String,
      idType: map['idType'] as int,
      nutrient: map['nutrient'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory NutrientModel.fromJson(String source) =>
      NutrientModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'NutrientModel(name: $name, value: $value, valueBase: $valueBase, unit: $unit, idType: $idType, nutrient: $nutrient)';
  }

  @override
  bool operator ==(covariant NutrientModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.value == value &&
        other.valueBase == valueBase &&
        other.unit == unit &&
        other.idType == idType &&
        other.nutrient == nutrient;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        value.hashCode ^
        valueBase.hashCode ^
        unit.hashCode ^
        idType.hashCode ^
        nutrient.hashCode;
  }
}
