import '../../../domain/base/app_exception.dart';

class RemoteException extends AppException {
  RemoteException.unknownNetworkException()
      : super("unknown network exception");

  RemoteException.notFound() : super('not found');
  RemoteException.badException({String? message}) : super(message ?? 'unknown error');
}

class UnknownNetworkException extends RemoteException {
  UnknownNetworkException() : super.unknownNetworkException();
}
