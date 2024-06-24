import 'package:pokemon_flutter/data/remote/base/dto_mapper.dart';
import 'package:pokemon_flutter/data/repository/pokemon/dto/pokemon_detail_dto.dart';

class PokemonDetailMapper extends DtoMapper<PokemonDetailDto> {
  const PokemonDetailMapper();
  @override
  PokemonDetailDto map(Map<String, dynamic> result) {
    return PokemonDetailDto.fromJson(result);
  }

}