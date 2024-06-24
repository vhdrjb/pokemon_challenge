import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashAnimationWidget extends StatelessWidget {
  const SplashAnimationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset('assets/animations/splash_animation.json');
  }
}
