import 'package:injectable/injectable.dart';
import 'package:pokemon_flutter/domain/configuration/get/get_current_configuration_use_case.dart';
import 'package:pokemon_flutter/presentation/modules/global/global_bloc.dart';

@module
abstract class PresentationModule {
  GlobalBloc provideGlobalBloc(
      GetCurrentConfigurationUseCase getConfigurationUseCase) {
    return GlobalBloc(getConfigurationUseCase: getConfigurationUseCase);
  }
}
