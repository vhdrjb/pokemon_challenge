
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon_flutter/presentation/presentation.dart';
abstract class BaseRouteProvider<B extends BaseBloc> {
  Widget provide(BuildContext context, GoRouterState state);


  B createBloc();

  B getBloc(GoRouterState state) {
    B bloc = createBloc();
    bloc.updateRouting(
        pathParameters: state.pathParameters,
        extra: state.extra,
        queryParameters: state.uri.queryParameters
    );
    return bloc;
  }
}