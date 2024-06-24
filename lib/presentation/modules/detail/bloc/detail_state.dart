part of 'detail_bloc.dart';

@immutable
abstract class DetailState {
  const DetailState();
}

class DetailInitial extends DetailState {}


class BackState extends ReturnState implements DetailState {}

class ShowDetailErrorState extends DetailState {
  final String error;

  const ShowDetailErrorState({
    required this.error,
  });
}

class ShowPokemonInfoState extends DetailState {
  final PokemonEntity pokemonEntity;

  const ShowPokemonInfoState({
    required this.pokemonEntity,
  });
}