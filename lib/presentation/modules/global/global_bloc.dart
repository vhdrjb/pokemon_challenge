import 'dart:async';

import 'package:meta/meta.dart';
import 'package:pokemon_flutter/domain/domain.dart';
import 'package:pokemon_flutter/presentation/base/bloc/base_bloc.dart';

part 'global_event.dart';

part 'global_state.dart';

class GlobalBloc extends BaseBloc<GlobalEvent, GlobalState> {
  GlobalBloc({required GetCurrentConfigurationUseCase getConfigurationUseCase})
      : super(GlobalInitial(entity: getConfigurationUseCase.get())) {
    on<GlobalEvent>((event, emit) {});
  }
}
