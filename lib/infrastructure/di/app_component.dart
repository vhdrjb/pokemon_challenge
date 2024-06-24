import 'package:get_it/get_it.dart';

import 'dart:developer';
import 'app_component.config.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

const stage = Environment("stage");

@InjectableInit(
  initializerName: r'initGetIt',
  preferRelativeImports: true,
)
Future createDependencyGraph([Environment environment = dev]) async {
  log('Running Env : ${environment.name}', name: 'env');
  return getIt.initGetIt(environment: environment.name);
}
