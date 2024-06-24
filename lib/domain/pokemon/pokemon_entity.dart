import 'package:pokemon_flutter/domain/base/entity.dart';

class PokemonEntity implements Entity {
  final String id;
  final String name;

  const PokemonEntity({
    required this.id,
    required this.name,
  });

  PokemonEntity copyWith({
    String? id,
  }) {
    return PokemonEntity(
      id: id ?? this.id,
      name: name,
    );
  }
}
