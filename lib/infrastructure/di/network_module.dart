import 'package:dio/dio.dart' hide LogInterceptor;
import 'package:injectable/injectable.dart';

import 'app_component.dart';
import 'log_interceptor.dart';

@module
abstract class NetworkModule {
  @dev
  @stage
  Dio provideDevDio(@Named('base_url') String baseUrl) {
    BaseOptions baseOptions = BaseOptions(
      baseUrl: baseUrl,
      receiveTimeout: const Duration(seconds: 10),
      connectTimeout: const Duration(seconds: 10),
    );

    Dio dio = Dio(baseOptions);
    dio.interceptors.add(LogInterceptor());
    return dio;
  }

  @prod
  Dio provideDio(@Named('base_url') String baseUrl) {
    BaseOptions baseOptions = BaseOptions(
      baseUrl: baseUrl,
      receiveTimeout: const Duration(seconds: 5),
      connectTimeout: const Duration(seconds: 5),
    );

    return Dio(baseOptions);
  }

  @dev
  @stage
  @Named('base_url')
  String get devBaseUrl => 'https://pokeapi.co/api/v2/';

  @prod
  @Named('base_url')
  String get baseUrl => 'https://pokeapi.co/api/v2/';
}
