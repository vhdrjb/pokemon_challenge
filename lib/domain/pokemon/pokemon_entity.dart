import 'package:pokemon_flutter/domain/base/entity.dart';

import 'pokemon_type_entity.dart';

class PokemonEntity implements Entity {
  final String id;
  final String name;
  final String? avatar;
  final int? weight;
  final int? height;
  final Iterable<PokemonTypeEntity>? types;

  const PokemonEntity(
      {required this.id,
      required this.name,
      this.avatar,
      this.weight,
      this.height,
      this.types});
}
