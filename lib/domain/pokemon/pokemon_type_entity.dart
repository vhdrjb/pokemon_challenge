import 'package:pokemon_flutter/domain/base/entity.dart';

class PokemonTypeEntity implements Entity {
  final String id;
  final String name;

  const PokemonTypeEntity({
    required this.id,
    required this.name,
  });
}