abstract class Routes {
  static const String splash = '/';
  static const String home = '/home';
  static const String detail = '/pokemon/:id';

  static  String detailsPath(String id) {
    return '/pokemon/$id';
  }
}