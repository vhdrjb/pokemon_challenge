import 'dart:ui';

import 'package:pokemon_flutter/domain/base/entity.dart';

class ConfigurationEntity implements Entity {
  final Brightness brightness;

  const ConfigurationEntity({
    required this.brightness,
  });
}