import 'dart:ui';

import 'package:injectable/injectable.dart';
import 'package:pokemon_flutter/data/base/repository.dart';
import 'package:pokemon_flutter/data/repository/configuration/configuration_datasource.dart';
import 'package:pokemon_flutter/domain/configuration/configuration_entity.dart';

@singleton
class ConfigurationRepository implements Repository {
  final ConfigurationDatasource _datasource;

  const ConfigurationRepository({
    required ConfigurationDatasource datasource,
  }) : _datasource = datasource;

  void updateTheme(Brightness theme) {
    _datasource.updateTheme(theme);
  }

  ConfigurationEntity getConfiguration() {
    Brightness brightness = _datasource.getTheme();
    return ConfigurationEntity(brightness: brightness);
  }
}
