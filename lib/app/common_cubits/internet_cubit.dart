import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class InternetCubit extends Cubit<bool?> {
  InternetCubit() : super(null) {
    _subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        emit(false);
      } else {
        emit(true);
      }
    });
  }
  late StreamSubscription<ConnectivityResult> _subscription;

  Future<void> check() async {
    final result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      emit(false);
    } else {
      emit(true);
    }
  }

  @override
  Future<void> close() {
    _subscription.cancel();

    return super.close();
  }
}
