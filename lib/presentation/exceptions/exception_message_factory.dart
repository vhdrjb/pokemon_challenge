import 'package:easy_localization/easy_localization.dart';
import 'package:pokemon_flutter/data/remote/base/remote_exception.dart';
import 'package:pokemon_flutter/domain/base/app_exception.dart';

class ExceptionMessageFactory {
  static ExceptionMessageFactory? _instance;

  static ExceptionMessageFactory get instance {
    _instance ??= ExceptionMessageFactory._();
    return _instance!;
  }

  ExceptionMessageFactory._();

  String getMessage(Exception exception) {
    if (exception is NetworkConnectionException) {
      return 'network_error'.tr();
    }

    if (exception is AppException) {
      return exception.message;
    }
    return exception.toString();
  }
}
