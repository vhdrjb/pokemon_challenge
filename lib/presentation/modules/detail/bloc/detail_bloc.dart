import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pokemon_flutter/domain/base/usecase_result.dart';
import 'package:pokemon_flutter/presentation/base/bloc/base_bloc.dart';
import 'package:pokemon_flutter/presentation/base/bloc/base_states.dart';

import '../../../../domain/domain.dart';
import '../../../exceptions/exception_message_factory.dart';

part 'detail_event.dart';

part 'detail_state.dart';

class DetailBloc extends BaseBloc<DetailEvent, DetailState> {
  final GetPokemonDetailUseCase _getPokemonDetailUseCase;

  DetailBloc({required GetPokemonDetailUseCase getPokemonDetailUseCase})
      : _getPokemonDetailUseCase = getPokemonDetailUseCase,
        super(DetailInitial()) {
    on<DetailEvent>((event, emit) {});
    on<BackEvent>(
      (event, emit) {
        emit(BackState());
      },
    );

    on<GetPokemonInfoEvent>(
      (event, emit) async {
        await _getPokemonInfo(emit);
      },
    );
  }

  FutureOr<void> _getPokemonInfo(Emitter<DetailState> emit) {
    final String? id = routingParam.pathParam['id'];
    if (id != null) {
      return _getPokemonDetailUseCase.perform(
          GetPokemonRequest(id: id),
          UseCaseResult(
            onSuccess: (data) {
              emit(ShowPokemonInfoState(pokemonEntity: data));
            },
            onError: (error) {
              emit(ShowDetailErrorState(error: ExceptionMessageFactory.instance.getMessage(error)));
            },
          ));
    } else {
      add(BackEvent());
    }
  }
}
