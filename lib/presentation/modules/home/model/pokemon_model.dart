import 'package:equatable/equatable.dart';

abstract class PokemonModel {}

class PokemonLoadingModel extends Equatable implements PokemonModel {
  @override
  List<Object?> get props => [true];

}

class PokemonDataModel extends Equatable implements PokemonModel {
  final String name;
  final String id;

  const PokemonDataModel({
    required this.name,
    required this.id,
  });

  @override
  List<Object?> get props => [id];


}
