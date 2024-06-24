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

class NavigateToDetailsState extends MoveState implements HomeState {
  NavigateToDetailsState({required String id}) : super(path: Routes.detailsPath(id));
}

class ShowErrorPopupState extends HomeState implements ListenableStates {
  final String message;

  const ShowErrorPopupState({
    required this.message,
  });
}
