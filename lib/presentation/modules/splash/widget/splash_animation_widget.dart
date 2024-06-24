import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:pokemon_flutter/presentation/modules/splash/bloc/splash_bloc.dart';

class SplashAnimationWidget extends StatefulWidget {
  const SplashAnimationWidget({super.key});

  @override
  State<SplashAnimationWidget> createState() => _SplashAnimationWidgetState();
}

class _SplashAnimationWidgetState extends State<SplashAnimationWidget> with TickerProviderStateMixin {

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/animations/splash_animation.json',
      repeat: false,
      controller: _controller,
      onLoaded: (p0) {
        _controller.duration = p0.duration;
        _controller.forward().whenComplete(() => context.read<SplashBloc>().add(NavigateToHomeEvent()),);
      },
    );
  }
}
