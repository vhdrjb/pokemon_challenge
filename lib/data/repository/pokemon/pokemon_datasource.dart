import 'dto/pokemon_list_dto.dart';

abstract class PokemonDatasource {
  Future<PokemonListDto> getPokemonList(int page,int pageSize);
}