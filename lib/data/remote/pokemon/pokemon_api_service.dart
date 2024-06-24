import 'package:injectable/injectable.dart';
import 'package:pokemon_flutter/data/remote/base/api_service.dart';
import 'package:pokemon_flutter/data/repository/pokemon/dto/pokemon_detail_dto.dart';
import 'package:pokemon_flutter/data/repository/pokemon/dto/pokemon_list_dto.dart';
import 'package:pokemon_flutter/data/repository/pokemon/pokemon_datasource.dart';

import 'mapper/pokemon_detail_mapper.dart';
import 'mapper/pokemon_list_mapper.dart';

@Injectable(as: PokemonDatasource)
class PokemonApiService extends ApiService implements PokemonDatasource {
  PokemonApiService(super.dio);

  final PokemonListMapper _pokemonListMapper = const PokemonListMapper();
  final PokemonDetailMapper _pokemonDetailMapper = const PokemonDetailMapper();

  @override
  Future<PokemonListDto> getPokemonList(int page, int pageSize) {
    return executeWithResponse(
        remote: (requestDto) => dio.get('pokemon?offset=$page&limit=$pageSize'),
        mapper: _pokemonListMapper);
  }

  @override
  Future<PokemonDetailDto> getPokemonInfo(String id) {
    return executeWithResponse(
        remote: (requestDto) => dio.get('pokemon/$id'),
        mapper: _pokemonDetailMapper);
  }
}
