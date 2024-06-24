import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_flutter/presentation/base/screen/base_stateful_screen.dart';
import 'package:pokemon_flutter/presentation/modules/splash/bloc/splash_bloc.dart';
import 'package:pokemon_flutter/presentation/modules/splash/widget/splash_body.dart';

class SplashScreen extends BaseStatefulScreen<SplashBloc> {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ScreenState<SplashBloc> {

  @override
  void initState() {
    super.initState();
    context.read<SplashBloc>().add(GetVersionEvent());
  }

  @override
  Widget buildScreen(BuildContext context) {
    return const Scaffold(
      body: SplashBody(),
    );
  }
}
