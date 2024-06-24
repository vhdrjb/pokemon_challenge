import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon_flutter/infrastructure/routing/provider/base_route_provider.dart';

import '../../../presentation/presentation.dart';

@injectable
class SplashRouteProvider extends BaseRouteProvider<SplashBloc> {
  @override
  Widget provide(BuildContext context, GoRouterState state) {
    return BlocProvider<SplashBloc>(
      create: (context) => getBloc(state),
      child: const SplashScreen(),
    );
  }

  @override
  SplashBloc createBloc() {
    return SplashBloc();
  }
}
