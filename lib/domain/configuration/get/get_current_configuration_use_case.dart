import 'package:injectable/injectable.dart';
import 'package:pokemon_flutter/data/repository/configuration/configuration_repository.dart';
import 'package:pokemon_flutter/domain/base/usecase/synchronous_usecase.dart';
import 'package:pokemon_flutter/domain/domain.dart';

@injectable
class GetCurrentConfigurationUseCase extends SynchronousUsecase {
final ConfigurationRepository _repository;

const GetCurrentConfigurationUseCase({
    required ConfigurationRepository repository,
  }) : _repository = repository;

  ConfigurationEntity get() => _repository.getConfiguration();


}