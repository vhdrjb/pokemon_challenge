import 'package:pokemon_flutter/data/repository/pokemon/dto/pokemon_detail_dto.dart';
import 'package:pokemon_flutter/domain/domain.dart';
import 'package:pokemon_flutter/domain/pokemon/pokemon_type_entity.dart';

class PokemonEntityMapper {
  const PokemonEntityMapper();
  PokemonEntity map(PokemonDetailDto detail) {
    return PokemonEntity(
      id: detail.id.toString(),
      name: detail.name ?? '',
      types: detail.types?.map(_mapType),
      height: detail.height,
      weight: detail.weight,
      avatar: detail.sprites?.other?.officialArtwork?.frontDefault
    );
  }

  PokemonTypeEntity _mapType(Type types) {
    RegExp regExp = RegExp(r'type\/(\d+)\/');
    Match? match = regExp.firstMatch(types.type?.url ?? '');
    String typeId = '';
    if (match != null) {
      typeId = match.group(1)!;
    }
    return PokemonTypeEntity(id: typeId, name: types.type?.name ?? 'no_name');
  }
}
