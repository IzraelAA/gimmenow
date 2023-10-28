
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:gimmenow/core/network/api_url.dart';
import 'package:gimmenow/core/network/logging_interceptor.dart';
class DioModule with DioMixin implements Dio {
  DioModule._([BaseOptions? options]) {
    options ??= BaseOptions(
      baseUrl: Endpoint.api,
      contentType: 'application/json',
      connectTimeout: 10000,
      sendTimeout: 10000,
      receiveTimeout: 10000,
    );

    this.options = options;
    interceptors.add(LoggingInterceptor());
    httpClientAdapter = DefaultHttpClientAdapter();
  }

  static Dio getInstance([BaseOptions? options]) => DioModule._(options);
}
