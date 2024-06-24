class AppException implements Exception {
  final String message;

  AppException(this.message);

  AppException.unknownException() : message = "unknown exception";

  @override
  String toString() {
    return message;
  }
}
