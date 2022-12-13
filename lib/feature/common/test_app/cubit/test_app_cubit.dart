// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';




class TestAppCubit extends Cubit<TestAppState> {
  TestAppCubit()
      : 
        super(const TestAppState(isLoad: true, nameNutrient: []));

  Future<void> loadNameNutrient() async {
    emit(state.copyWith(isLoad: true));

  }
}

@immutable
class TestAppState {
  final bool isLoad;
  final List<String> nameNutrient;
  const TestAppState({
    required this.isLoad,
    required this.nameNutrient,
  });

  TestAppState copyWith({
    bool? isLoad,
    List<String>? nameNutrient,
  }) {
    return TestAppState(
      isLoad: isLoad ?? this.isLoad,
      nameNutrient: nameNutrient ?? this.nameNutrient,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isLoad': isLoad,
      'nameNutrient': nameNutrient,
    };
  }

  factory TestAppState.fromMap(Map<String, dynamic> map) {
    return TestAppState(
      isLoad: map['isLoad'] as bool,
      nameNutrient: List<String>.from(
        map['nameNutrient'] as List<String>,
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory TestAppState.fromJson(String source) =>
      TestAppState.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'TestAppState(isLoad: $isLoad, nameNutrient: $nameNutrient)';

  @override
  bool operator ==(covariant TestAppState other) {
    if (identical(this, other)) return true;

    return other.isLoad == isLoad &&
        listEquals(other.nameNutrient, nameNutrient);
  }

  @override
  int get hashCode => isLoad.hashCode ^ nameNutrient.hashCode;
}
