// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'package:product/core/storage/local_storage.dart';
import 'package:product/global_const.dart';

// https://console.firebase.google.com/u/2/project/product-13769/config
const _devAndroidMinVersionKey = 'dev_android_min_version';
const _prodAndroidMinVersionKey = 'prod_android_min_version';

const _devNameDbKey = 'dev_name_db';
const _prodNameDbKey = 'prod_name_db';

class RemoteConfigCubit extends Cubit<RemoteConfigState> {
  RemoteConfigCubit({required LocalStorage storage})
      : _storage = storage,
        super(const RemoteConfigState(isLoad: true, isNeedUpdate: false));

  final LocalStorage _storage;

  Future<void> load() async {
    emit(state.copyWith(isLoad: true));

    //Get Latest version info from firebase config
    final remoteConfig = FirebaseRemoteConfig.instance;
    var versionKey = _prodAndroidMinVersionKey;
    var nameDbKey = _prodNameDbKey;

    try {
      //
      if (IS_DEBUG) {
        await remoteConfig.setConfigSettings(
          RemoteConfigSettings(
            fetchTimeout: Duration.zero,
            minimumFetchInterval: Duration.zero,
          ),
        );
        versionKey = _devAndroidMinVersionKey;
        nameDbKey = _devNameDbKey;
      }
      final _ = await remoteConfig.fetchAndActivate();

      final newVersion = _parseVersion(remoteConfig.getString(versionKey));
      final newNameDb = remoteConfig.getString(nameDbKey).trim();

      await _storage.setDbName(newNameDb);

      final currentVersion = await _getCurrentVersion();
      emit(
        state.copyWith(
          isLoad: false,
          isNeedUpdate: newVersion > currentVersion,
        ),
      );
    } on Object catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    } finally {
      emit(
        state.copyWith(
          isLoad: false,
          isNeedUpdate: false,
        ),
      );
    }
  }

  Future<int> _getCurrentVersion() async {
    final info = await PackageInfo.fromPlatform();
    final currentVersion = _parseVersion(info.version);
    return currentVersion;
  }

  int _parseVersion(String version) {
    // ignore: parameter_assignments
    version = version
        .trim()
        .replaceAll('.', '')
        .replaceAll(' ', '')
        .replaceAll(',', '')
        .replaceAll('_', '')
        .replaceAll('|', '');

    return int.tryParse(version) ?? 0;
  }
}

@immutable
class RemoteConfigState {
  final bool isLoad;
  final bool isNeedUpdate;

  const RemoteConfigState({
    required this.isLoad,
    required this.isNeedUpdate,
  });

  RemoteConfigState copyWith({
    bool? isLoad,
    bool? isNeedUpdate,
  }) {
    return RemoteConfigState(
      isLoad: isLoad ?? this.isLoad,
      isNeedUpdate: isNeedUpdate ?? this.isNeedUpdate,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isLoad': isLoad,
      'isNeedUpdate': isNeedUpdate,
    };
  }

  factory RemoteConfigState.fromMap(Map<String, dynamic> map) {
    return RemoteConfigState(
      isLoad: map['isLoad'] as bool,
      isNeedUpdate: map['isNeedUpdate'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory RemoteConfigState.fromJson(String source) =>
      RemoteConfigState.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'RemoteConfigState(isLoad: $isLoad, isNeedUpdate: $isNeedUpdate)';

  @override
  bool operator ==(covariant RemoteConfigState other) {
    if (identical(this, other)) return true;

    return other.isLoad == isLoad && other.isNeedUpdate == isNeedUpdate;
  }

  @override
  int get hashCode => isLoad.hashCode ^ isNeedUpdate.hashCode;
}
