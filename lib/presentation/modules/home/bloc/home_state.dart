part of 'home_bloc.dart';

@immutable
abstract class HomeState {
  const HomeState();
}

class HomeInitial extends HomeState {}

class ShowPokemonListDataState extends HomeState {
  final List<PokemonModel> data;

  const ShowPokemonListDataState({
    required this.data,
  });
}

class ShowErrorState extends HomeState {
  final String error;

  const ShowErrorState({
    required this.error,
  });
}
