

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:product/core/storage/local_storage.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit({
    required LocalStorage storage,
  })  : _storage = storage,
        super(OnboardingState());

  final LocalStorage _storage;

  void complectOnboarding()  {
     _storage..completeOnboarding()
     ..completeFirstStart();
  }
}

class OnboardingState {}
