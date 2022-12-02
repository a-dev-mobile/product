// ignore_for_file: avoid_positional_boolean_parameters, lines_longer_than_80_chars

import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

class DebugCubit extends Cubit<DebugState> {
  DebugCubit()
      : super(const DebugState(isShowDevice: false, isShowBtnHttpLog: false));

  void setDevicePreview(bool isShow) {
    emit(state.copyWith(isShowDevice: isShow));
  }

  void setShowBtnHttpLog(bool isShow) {
    emit(state.copyWith(isShowBtnHttpLog: isShow));
  }
}

@immutable
class DebugState {
  const DebugState({
    required this.isShowDevice,
    required this.isShowBtnHttpLog,
  });

  factory DebugState.fromJson(String source) =>
      DebugState.fromMap(json.decode(source) as Map<String, dynamic>);

  factory DebugState.fromMap(Map<String, dynamic> map) {
    return DebugState(
      isShowDevice: map['isShowDevice'] as bool,
      isShowBtnHttpLog: map['isShowBtnHttpLog'] as bool,
    );
  }
  final bool isShowDevice;
  final bool isShowBtnHttpLog;

  DebugState copyWith({
    bool? isShowDevice,
    bool? isShowBtnHttpLog,
  }) {
    return DebugState(
      isShowDevice: isShowDevice ?? this.isShowDevice,
      isShowBtnHttpLog: isShowBtnHttpLog ?? this.isShowBtnHttpLog,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isShowDevice': isShowDevice,
      'isShowBtnHttpLog': isShowBtnHttpLog,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() =>
      'DebugState(isShowDevice: $isShowDevice, isShowBtnHttpLog: $isShowBtnHttpLog)';

  @override
  bool operator ==(covariant DebugState other) {
    if (identical(this, other)) return true;

    return other.isShowDevice == isShowDevice &&
        other.isShowBtnHttpLog == isShowBtnHttpLog;
  }

  @override
  int get hashCode => isShowDevice.hashCode ^ isShowBtnHttpLog.hashCode;
}
