import 'dart:ui';

abstract class ConfigurationDatasource {
  void updateTheme(Brightness brightness);
  Brightness getTheme();
}