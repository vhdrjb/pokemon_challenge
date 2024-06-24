import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_flutter/infrastructure/di/app_component.dart';
import 'package:pokemon_flutter/infrastructure/env/app_environments.dart';
import 'package:pokemon_flutter/infrastructure/routing/app_router.dart';
import 'package:pokemon_flutter/presentation/modules/global/global_bloc.dart';
import 'package:pokemon_flutter/presentation/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await createDependencyGraph(AppEnvironments.currentEnv);
  runApp(EasyLocalization(
      supportedLocales: const [Locale('en')],
      path: 'assets/i10n',
      fallbackLocale: const Locale('en'),
      child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late GlobalBloc bloc;
  late AppRouter appRouter;

  @override
  void initState() {
    super.initState();
    appRouter = getIt.get();
    bloc = getIt.get();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocBuilder<GlobalBloc, GlobalState>(
        buildWhen: (previous, current) => current is GlobalInitial,
        builder: (context, state) {
          Brightness brightness = (state as GlobalInitial).entity.brightness;
          return MaterialApp.router(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            routerConfig: appRouter.generateRouter(),
            themeMode: brightness == Brightness.light
                ? ThemeMode.light
                : ThemeMode.dark,
            theme: AppTheme.theme(brightness: brightness).themeData,
          );
        },
        bloc: bloc,
      ),
    );
  }
}
