import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:pokemon_flutter/presentation/base/bloc/base_bloc.dart';
import 'package:pokemon_flutter/presentation/base/bloc/base_states.dart';
import 'package:pokemon_flutter/presentation/presentation.dart';

part 'splash_event.dart';

part 'splash_state.dart';

class SplashBloc extends BaseBloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<SplashEvent>((event, emit) {});
    on<GetVersionEvent>((event, emit) async {
      await _showVersion(emit);
    });
    on<NavigateToHomeEvent>(
      (event, emit) {
        emit(NavigateToHomeState());
      },
    );
  }

  Future<void> _showVersion(Emitter<SplashState> emit) async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    emit(ShowVersionState(version: packageInfo.version));
  }
}
