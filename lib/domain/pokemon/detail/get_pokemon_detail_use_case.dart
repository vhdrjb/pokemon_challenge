import 'package:injectable/injectable.dart';
import 'package:pokemon_flutter/data/repository/pokemon/pokemon_repository.dart';
import 'package:pokemon_flutter/domain/base/usecase/single_usecase.dart';
import 'package:pokemon_flutter/domain/domain.dart';

@injectable
class GetPokemonDetailUseCase
    extends SingleUseCase<GetPokemonRequest, PokemonEntity> {
  final PokemonRepository _repository;

  const GetPokemonDetailUseCase({
    required PokemonRepository repository,
  }) : _repository = repository;

  @override
  Future<PokemonEntity> task(GetPokemonRequest request) {
    return _repository.findById(request.id);
  }
}
