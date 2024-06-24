import 'dart:ui';

import 'package:injectable/injectable.dart';
import 'package:pokemon_flutter/data/repository/configuration/configuration_datasource.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: ConfigurationDatasource)
class ConfigurationPersistence implements ConfigurationDatasource {
  static const String _themeKey = 'theme-key';
  final SharedPreferences _preferences;

  const ConfigurationPersistence({
    required SharedPreferences preferences,
  }) : _preferences = preferences;

  @override
  void updateTheme(Brightness brightness) {
    _preferences.setString(_themeKey, brightness.name);
  }

  @override
  Brightness getTheme() {
    return Brightness.values
        .byName(_preferences.getString(_themeKey) ?? Brightness.light.name);
  }
}
