import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon_flutter/domain/domain.dart';
import 'package:pokemon_flutter/infrastructure/routing/provider/base_route_provider.dart';

import '../../../presentation/presentation.dart';

@injectable
class HomeRouteProvider extends BaseRouteProvider<HomeBloc> {
  final GetPokemonListUsecase _getPokemonListUsecase;

  @override
  HomeBloc createBloc() {
    return HomeBloc(getPokemonListUsecase: _getPokemonListUsecase);
  }

  @override
  Widget provide(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => getBloc(state),
      child: const HomeScreen(),
    );
  }

  HomeRouteProvider({
    required GetPokemonListUsecase getPokemonListUsecase,
  }) : _getPokemonListUsecase = getPokemonListUsecase;
}
