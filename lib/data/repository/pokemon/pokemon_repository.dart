import 'package:injectable/injectable.dart';
import 'package:pokemon_flutter/data/base/repository.dart';
import 'package:pokemon_flutter/data/repository/pokemon/pokemon_datasource.dart';
import 'package:pokemon_flutter/domain/base/page_wrapper.dart';

import '../../../domain/pokemon/pokemon_entity.dart';
import 'mapper/pokemon_entity_mapper.dart';
import 'mapper/pokemon_list_entity_mapper.dart';

@injectable
class PokemonRepository implements Repository{
  final PokemonDatasource _datasource;
  final PokemonListEntityMapper _pokemonListMapper =  const PokemonListEntityMapper();
  final PokemonEntityMapper _pokemonEntityMapper = const PokemonEntityMapper();
  const PokemonRepository({
    required PokemonDatasource datasource,
  }) : _datasource = datasource;

  Future<PageWrapper<PokemonEntity>> findAll(int page,int pageSize) {
    return _datasource.getPokemonList(page, pageSize).then(_pokemonListMapper.map);
  }

  Future<PokemonEntity> findById(String id) {
    return _datasource.getPokemonInfo(id).then(_pokemonEntityMapper.map);
  }
}