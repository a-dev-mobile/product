import 'package:bloc/bloc.dart';
import 'package:product/core/log/log.dart';

// ignore_for_file:avoid-non-ascii-symbols
class AppBlocObserver extends BlocObserver {
  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
    log
      ..d(
        '🙏 ${bloc.runtimeType}  on transition',
      )
      ..v(transition);
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);

    log.e('🚑 bloc: error: ${bloc.runtimeType} on error', error, stackTrace);
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);

    log
      ..d(
        '🙌 ${bloc.runtimeType} on change',
      )
      ..v(change);
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);

    log
      ..d(
        '✍ ${bloc.runtimeType}',
      )
      ..v(event);
  }

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    log.d('👍 ${bloc.runtimeType} on create');
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
    log.d('👎 ${bloc.runtimeType}  on close');
  }
}
