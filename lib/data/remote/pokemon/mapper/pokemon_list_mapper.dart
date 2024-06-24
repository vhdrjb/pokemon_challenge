import 'package:pokemon_flutter/data/remote/base/dto_mapper.dart';
import 'package:pokemon_flutter/data/repository/pokemon/dto/pokemon_list_dto.dart';

class PokemonListMapper extends DtoMapper<PokemonListDto> {
  const PokemonListMapper();
  @override
  PokemonListDto map(Map<String, dynamic> result) {
    return PokemonListDto.fromJson(result);
  }

}