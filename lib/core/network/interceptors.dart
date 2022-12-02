import 'package:dio/dio.dart';


class ContentTypeInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.method == 'PATCH') {
      options.headers.addAll({
        'content-type': 'application/json',
      });

      return handler.next(options);
    }

    if (options.method == 'POST' && options.data is FormData) {
      options.headers.addAll({'content-type': 'image/png'});

      return handler.next(options);
    }

    options.headers.addAll({
      'content-type': 'application/json',
    });

    handler.next(options);
  }
}



class UserAgentInterceptor extends InterceptorsWrapper {
  UserAgentInterceptor(this.userAgent);

  final String userAgent;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers.addAll({'user-agent': userAgent});
    handler.next(options);
  }
}

class AcceptLanguageInterceptor extends InterceptorsWrapper {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers.addAll({'accept-language': 'ru-RU'});
    handler.next(options);
  }
}
