import 'package:pokemon_flutter/data/repository/pokemon/dto/pokemon_list_dto.dart';
import 'package:pokemon_flutter/domain/base/page_wrapper.dart';

import '../../../../domain/pokemon/pokemon_entity.dart';

class PokemonListEntityMapper {
  const PokemonListEntityMapper();
  PageWrapper<PokemonEntity> map(PokemonListDto dto) {
    final bool lastPage = dto.next == null;
    return PageWrapper(
        lastPage: lastPage,
        content: dto.results?.map(
              (e) => _mapPokemon(e),
            ) ??
            []);
  }

  PokemonEntity _mapPokemon(PokemonInfoDto info) {
    RegExp regExp = RegExp(r'pokemon\/(\d+)\/');
    Match? match = regExp.firstMatch(info.url ?? '');
    String pokemonId = '';
    if (match != null) {
      pokemonId = match.group(1)!;
    }
    return PokemonEntity(id: pokemonId, name: info.name ?? '');
  }
}
