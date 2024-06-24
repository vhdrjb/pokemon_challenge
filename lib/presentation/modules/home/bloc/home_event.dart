part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class GetPokemonListEvent extends HomeEvent {}

class ShowPokemonDetailEvent extends HomeEvent {
  final String id;

  ShowPokemonDetailEvent({
    required this.id,
  });
}
