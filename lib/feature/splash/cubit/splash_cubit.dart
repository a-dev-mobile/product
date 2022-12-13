// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:product/navigation/app_router.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit({
    required AppRouter router,

  })  : _go = router,

        super(SplashState.init());

  final AppRouter _go;


  Future<void> load() async {
    emit(state.copyWith(isLoad: true));

    await _go.selectedRouter();
    emit(state.copyWith(isLoad: false));

    // emit(state.copyWith(isLoad: false));
  }
}

@immutable
class SplashState {
  final bool isLoad;
  const SplashState({
    required this.isLoad,
  });

  SplashState copyWith({
    bool? isLoad,
  }) {
    return SplashState(
      isLoad: isLoad ?? this.isLoad,
    );
  }

  factory SplashState.init() => const SplashState(isLoad: true);

  @override
  String toString() => 'SplashState(isLoad: $isLoad)';

  @override
  bool operator ==(covariant SplashState other) {
    if (identical(this, other)) return true;

    return other.isLoad == isLoad;
  }

  @override
  int get hashCode => isLoad.hashCode;
}
