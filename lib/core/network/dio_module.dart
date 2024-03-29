
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:gimmenow/core/network/api_url.dart';
import 'package:gimmenow/core/network/logging_interceptor.dart';

class DioModule with DioMixin implements Dio {
  DioModule._([BaseOptions? options]) {
    options ??= BaseOptions(
      baseUrl: Endpoint.api,
      contentType: 'application/json',
      connectTimeout: const Duration(seconds: 10),
      sendTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    );

    this.options = options;
    interceptors.add(LoggingInterceptor());
    httpClientAdapter = DefaultHttpClientAdapter();
  }

  static Dio getInstance([BaseOptions? options]) => DioModule._(options);
}
