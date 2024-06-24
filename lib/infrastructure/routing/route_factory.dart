import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon_flutter/infrastructure/routing/provider/detail_route_provider.dart';
import 'package:pokemon_flutter/infrastructure/routing/provider/home_route_provider.dart';
import 'package:pokemon_flutter/infrastructure/routing/provider/splash_route_provider.dart';
import 'package:pokemon_flutter/presentation/presentation.dart';

@lazySingleton
class RouteFactory {
  final SplashRouteProvider _splashRouteProvider;
  final HomeRouteProvider _homeRouteProvider;
  final DetailRouteProvider _detailRouteProvider;

  generateRoute(BuildContext context, GoRouterState state) {
    final String path = state.path ?? Routes.splash;

    if (path == Routes.splash) {
      return _splashRouteProvider.provide(context, state);
    }

    if (path == Routes.home) {
      return _homeRouteProvider.provide(context, state);
    }

    if (path == Routes.detail) {
      return _detailRouteProvider.provide(context, state);
    }

    throw 'undefined route';
  }

  const RouteFactory({
    required SplashRouteProvider splashRouteProvider,
    required HomeRouteProvider homeRouteProvider,
    required DetailRouteProvider detailRouteProvider,
  })  : _splashRouteProvider = splashRouteProvider,
        _homeRouteProvider = homeRouteProvider,
        _detailRouteProvider = detailRouteProvider;
}
