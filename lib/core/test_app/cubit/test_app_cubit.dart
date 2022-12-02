// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

class TestAppCubit extends Cubit<TestAppState> {
  TestAppCubit() : super(const TestAppState(isLoad: true));
}

@immutable
class TestAppState {
  final bool isLoad;
  const TestAppState({
    required this.isLoad,
  });

  TestAppState copyWith({
    bool? isLoad,
  }) {
    return TestAppState(
      isLoad: isLoad ?? this.isLoad,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isLoad': isLoad,
    };
  }

  factory TestAppState.fromMap(Map<String, dynamic> map) {
    return TestAppState(
      isLoad: map['isLoad'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory TestAppState.fromJson(String source) =>
      TestAppState.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'TestAppState(isLoad: $isLoad)';

  @override
  bool operator ==(covariant TestAppState other) {
    if (identical(this, other)) return true;

    return other.isLoad == isLoad;
  }

  @override
  int get hashCode => isLoad.hashCode;
}
