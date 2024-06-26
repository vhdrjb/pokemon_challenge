import 'package:dio/dio.dart';

import 'remote_exception.dart';

class RemoteExceptionFactory {
  RemoteException create(DioException error) {
    if (error.response?.statusCode == 404) {
      return RemoteException.notFound();
    }

    if ((error.response?.statusCode ?? 0) ~/ 100 == 4) {
      String? errorMessage = error.response?.data["message"];
      if (errorMessage != null) {
        return RemoteException.badException(message: errorMessage);
      }
    }

    if (error.type == DioExceptionType.sendTimeout ||
        error.type == DioExceptionType.receiveTimeout ||
        error.type == DioExceptionType.connectionTimeout ||
        error.type == DioExceptionType.connectionError) {
      return NetworkConnectionException();
    }

    return UnknownNetworkException();
  }
}
