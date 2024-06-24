import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pokemon_flutter/domain/base/pageable_request.dart';
import 'package:pokemon_flutter/domain/base/usecase_result.dart';
import 'package:pokemon_flutter/domain/domain.dart';
import 'package:pokemon_flutter/domain/pokemon/list/get_pokemon_list_usecase.dart';
import 'package:pokemon_flutter/presentation/base/bloc/base_bloc.dart';

import '../model/pokemon_model.dart';
import 'home_bloc_data.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  final GetPokemonListUsecase _getPokemonListUsecase;
  HomeBlocData _blocData = const HomeBlocData();

  HomeBloc({required GetPokemonListUsecase getPokemonListUsecase})
      : _getPokemonListUsecase = getPokemonListUsecase,
        super(HomeInitial()) {
    on<HomeEvent>((event, emit) {});
    on<GetPokemonListEvent>(
      (event, emit) async {
        await _getPokemonList(emit);
      },
    );
  }

  FutureOr<void> _getPokemonList(Emitter<HomeState> emit) {
    if (!_blocData.isLastPage && !_blocData.loading) {
      int page = _blocData.offset;
      PageableRequest request = PageableRequest(page: page);
      List<PokemonModel> models = _blocData.data
          .map(
            (e) => PokemonDataModel(name: e.name, id: e.id) as PokemonModel,
          )
          .toList();
      _blocData = _blocData.copyWith(loading: true);
      models.add(PokemonLoadingModel());
      emit(ShowPokemonListDataState(data: models));
      return _getPokemonListUsecase.perform(
          request,
          UseCaseResult(
            onSuccess: (data) {
              _increasePage(request.pageSize, data.lastPage);
              models.removeWhere(
                (element) => element is PokemonLoadingModel,
              );
              models.addAll(data.content.map(
                (e) => PokemonDataModel(name: e.name, id: e.id),
              ));
              emit(ShowPokemonListDataState(data: models));
              List<PokemonEntity> entities = _blocData.data.toList();
              entities.addAll(data.content);
              _blocData = _blocData.copyWith(data: entities, loading: false);
            },
            onError: (error) {
              emit(ShowErrorState(error: error.toString()));
            },
          ));
    }
  }

  void _increasePage(int pageSize, bool lastPage) {
    _blocData = _blocData.copyWith(
        offset: _blocData.offset + pageSize, isLastPage: lastPage);
  }
}
