part of 'detail_bloc.dart';

@immutable
abstract class DetailEvent {}

class BackEvent extends DetailEvent {}

class GetPokemonInfoEvent extends DetailEvent {}