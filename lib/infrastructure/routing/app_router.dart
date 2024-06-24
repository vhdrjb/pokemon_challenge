import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon_flutter/presentation/presentation.dart';

import 'route_factory.dart';

@lazySingleton
class AppRouter {
  final RouteFactory routeFactory;
  GoRouter? _goRouter;

  AppRouter({
    required this.routeFactory,
  });

  GoRouter generateRouter() {
    final GoRouter goRouter;
    if (_goRouter == null) {
      goRouter = GoRouter(debugLogDiagnostics: true, routes: [
        GoRoute(
          path: Routes.splash,
          builder: (context, state) =>
              routeFactory.generateRoute(context, state),
        ),
        GoRoute(
          path: Routes.home,
          builder: (context, state) =>
              routeFactory.generateRoute(context, state),
        ),
        GoRoute(
          path: Routes.detail,
          builder: (context, state) =>
              routeFactory.generateRoute(context, state),
        )
      ]);
      _goRouter = goRouter;
    } else {
      goRouter = _goRouter!;
    }
    return goRouter;
  }
}
