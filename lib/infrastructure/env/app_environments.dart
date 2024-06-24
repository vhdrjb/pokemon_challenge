import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../di/app_component.dart';

abstract class AppEnvironments {
  static Environment get currentEnv {
    if (kProfileMode) {
      return stage;
    }

    if (kReleaseMode) {
      return prod;
    }

    return dev;
  }
}
