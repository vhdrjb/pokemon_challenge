import 'dart:developer';

import 'package:dio/dio.dart';

import 'dto_mapper.dart';
import 'remote_exception.dart';
import 'remote_exception_factory.dart';

abstract class ApiService {
  final Dio dio;
  final RemoteExceptionFactory _remoteExceptionFactory =
      RemoteExceptionFactory();

  ApiService(this.dio);

  Future<D> executeWithResponse<D>(
      {required ApiCall remote,
      Map requestDto = const {},
      required RemoteMapper<D> mapper}) async {
    try {
      Response response = await remote(requestDto);
      Map<String, dynamic> result = response.data;
      return mapper.mapToData(result);
    } on DioException catch (error) {
      throw _remoteExceptionFactory.create(error);
    } catch (e) {
      log(e.toString(), name: "api service error");
      throw UnknownNetworkException();
    }
  }

  Future execute({required ApiCall remote, Map requestDto = const {}}) async {
    try {
      Response response = await remote(requestDto);
      assert((response.statusCode ?? 0) ~/ 100 == 2);
    } on DioException catch (error) {
      throw _remoteExceptionFactory.create(error);
    }
  }
}

typedef ApiCall = Future<Response> Function(Map requestDto);
