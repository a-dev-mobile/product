import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:product/core/log/logger.dart';

@sealed
abstract class AppUtilError {
  AppUtilError._();

  static void logError(
    Object exception, {
    StackTrace? stackTrace,
    String? hint,
  }) {
    try {
      if (exception is String) {
        return logMessage(
          exception,
          stackTrace: stackTrace,
          hint: hint,
          warning: true,
        );
      }
      logger.e(exception, stackTrace ?? StackTrace.current);
    } on Object catch (error, stackTrace) {
      logger.e(
        'Произошло исключение "$error" в ErrorUtil.logError',
        stackTrace,
      );
    }
  }

  // ignore: long-parameter-list
  static void logMessage(
    String message, {
    StackTrace? stackTrace,
    String? hint,
    bool warning = false,
    List<String>? params,
  }) {
    try {
      logger.e(message, stackTrace);
    } on Object catch (error, stackTrace) {
      logger.e(
        'Произошло исключение "$error" в ErrorUtil.logMessage',
        stackTrace,
      );
    }
  }
}
