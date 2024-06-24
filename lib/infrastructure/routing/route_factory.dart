import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon_flutter/infrastructure/routing/provider/home_route_provider.dart';
import 'package:pokemon_flutter/infrastructure/routing/provider/splash_route_provider.dart';
import 'package:pokemon_flutter/presentation/presentation.dart';
@lazySingleton
class RouteFactory {

  final SplashRouteProvider _splashRouteProvider;
  final HomeRouteProvider _homeRouteProvider;



  generateRoute(BuildContext context, GoRouterState state) {

    final String path = state.path ?? Routes.splash;

    if (path == Routes.splash) {
      return _splashRouteProvider.provide(context,state);
    }

    if (path == Routes.home) {
      return _homeRouteProvider.provide(context, state);
    }

    throw 'undefined route';
  }

  const RouteFactory({
    required SplashRouteProvider splashRouteProvider,
    required HomeRouteProvider homeRouteProvider,
  })
      : _splashRouteProvider = splashRouteProvider,
        _homeRouteProvider = homeRouteProvider;

}