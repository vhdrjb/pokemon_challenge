import 'package:injectable/injectable.dart';
import 'package:pokemon_flutter/data/repository/pokemon/pokemon_repository.dart';
import 'package:pokemon_flutter/domain/base/page_wrapper.dart';
import 'package:pokemon_flutter/domain/base/pageable_request.dart';
import 'package:pokemon_flutter/domain/base/usecase/single_usecase.dart';
import 'package:pokemon_flutter/domain/base/usecase/supplier_usecase.dart';
import 'package:pokemon_flutter/domain/pokemon/pokemon_entity.dart';

@injectable
class GetPokemonListUsecase
    extends SingleUseCase<PageableRequest, PageWrapper<PokemonEntity>> {
  final PokemonRepository _repository;

  const GetPokemonListUsecase({
    required PokemonRepository repository,
  }) : _repository = repository;

  @override
  Future<PageWrapper<PokemonEntity>> task(PageableRequest request) {
    return _repository.findAll(request.page, request.pageSize);
  }
}
