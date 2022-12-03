import 'package:dio/dio.dart';
import 'package:dio_log/interceptor/dio_log_interceptor.dart';
import 'package:product/core/log/log.dart';
import 'package:product/core/network/network.dart';


class NetworkClient {
  NetworkClient({
    required String baseUrl,

    required String userAgent,
  }) : _dio = Dio(
          BaseOptions(
            baseUrl: baseUrl,
            connectTimeout: 30000,
            receiveTimeout: 30000,
          ),
        )..interceptors.addAll([
            DioLogInterceptor(),
            // NoInternetInterceptor(
            //     _router.router.routerDelegate.navigatorKey.currentContext!),
            ContentTypeInterceptor(),

            // PageDirectionInterceptor(),
            AcceptLanguageInterceptor(),
            UserAgentInterceptor(userAgent),
        
          ]);

  final Dio _dio;
  Dio get client => _dio;

// ignore: avoid_setters_without_getters
  set isShowHttpInLog(bool value) => DioLogInterceptor.enablePrintLog = value;

  // ignore: long-parameter-list
  Future<Response<dynamic>> request({
    required Method method,
    Map<String, dynamic>? params,
    Map<String, String>? header,
    dynamic body,
    required String endPoint,
  }) async {
    try {
      // ignore: prefer-conditional-expressions
      if (method == Method.post) {
        return await client.post<dynamic>(
          endPoint,
          queryParameters: params,
          options: Options(headers: header),
          data: body,
        );
      } else if (method == Method.get) {
        return await client.get<dynamic>(
          endPoint,
          queryParameters: params,
          options: Options(headers: header),
        );
      } else if (method == Method.patch) {
        return await client.patch<dynamic>(
          endPoint,
          queryParameters: params,
          options: Options(headers: header),
          data: body,
        );
      }
    } on DioError catch (e) {
      logger.d(e.message, e.error, e.stackTrace);

      return e.response!;
    } on Object catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }

    return Response(
      requestOptions: RequestOptions(path: ''),
    );
  }
}

/// {@template network_client}
/// Method enumeration
/// {@endtemplate}
enum Method with Comparable<Method> {
  /// post method
  post('post'),

  /// get method
  get('get'),

  /// patch_getStarted
  patch('patch');

  /// {@macro network_client}
  const Method(this.value);

  /// Creates a new instance of [Method] from a given string.
  static Method fromValue(String? value, {Method? fallback}) {
    switch (value) {
      case 'post':
        return post;
      case 'get':
        return get;
      case 'patch':
        return patch;
      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  /// Value of the enum
  final String value;

  /// Pattern matching
  T map<T>({
    required T Function() post,
    required T Function() get,
    required T Function() patch,
  }) {
    switch (this) {
      case Method.post:
        return post();
      case Method.get:
        return get();
      case Method.patch:
        return patch();
    }
  }

  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
    T Function()? post,
    T Function()? get,
    T Function()? patch,
  }) =>
      map<T>(
        post: post ?? orElse,
        get: get ?? orElse,
        patch: patch ?? orElse,
      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? post,
    T Function()? get,
    T Function()? patch,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        post: post,
        get: get,
        patch: patch,
      );

  @override
  int compareTo(Method other) => index.compareTo(other.index);

  @override
  String toString() => value;
}
