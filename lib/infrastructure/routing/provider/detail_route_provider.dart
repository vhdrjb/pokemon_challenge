import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon_flutter/domain/domain.dart';
import 'package:pokemon_flutter/infrastructure/routing/provider/base_route_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../../../presentation/presentation.dart';

@injectable
class DetailRouteProvider extends BaseRouteProvider<DetailBloc> {
  final GetPokemonDetailUseCase _getPokemonDetailUseCase;

  @override
  DetailBloc createBloc() {
    return DetailBloc(getPokemonDetailUseCase: _getPokemonDetailUseCase);
  }

  @override
  Widget provide(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => getBloc(state),
      child: const DetailScreen(),
    );
  }

  DetailRouteProvider({
    required GetPokemonDetailUseCase getPokemonDetailUseCase,
  }) : _getPokemonDetailUseCase = getPokemonDetailUseCase;
}
