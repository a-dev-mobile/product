import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:product/core/storage/local_storage.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit({
    required LocalStorage storage,
  })  : _storage = storage,
        super(OnboardingState());

  final LocalStorage _storage;

  Future<void> complectOnboarding() async {
    await _storage.completeOnboarding();
    await _storage.completeFirstStart();
  }
}

class OnboardingState {}
