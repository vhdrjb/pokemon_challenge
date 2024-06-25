import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pokemon_flutter/data/repository/pokemon/pokemon_repository.dart';
import 'package:pokemon_flutter/domain/base/page_wrapper.dart';
import 'package:pokemon_flutter/domain/base/pageable_request.dart';
import 'package:pokemon_flutter/domain/base/usecase_result.dart';
import 'package:pokemon_flutter/domain/domain.dart';

import 'get_pokemon_list_usecase_test.mocks.dart';

@GenerateNiceMocks([MockSpec<PokemonRepository>()])
void main() {
  test(
    'test get list of pokemon',
    () async {
      final repository = MockPokemonRepository();
      when(repository.findAll(any, any)).thenAnswer((realInvocation) {
        return Future.value(
            const PageWrapper<PokemonEntity>(lastPage: true, content: [
              PokemonEntity(id: '1', name: 'test pokemon')
            ]));
      },);
      final GetPokemonListUsecase usecase = GetPokemonListUsecase(repository: repository);
      await usecase.perform(const PageableRequest(page: 1), UseCaseResult(
        onSuccess: (data) {
          expect(data.content.length,1);
          expect(data.lastPage,true);
          expect(data.content.first.name,'test pokemon');
        },
        onError: (error) => throw error,
      ));
      verify(repository.findAll(1, 50));
    },
  );
}
