import 'package:flutter/material.dart';
import 'package:pokemon_flutter/presentation/extensions/context_extensions.dart';
import 'package:pokemon_flutter/presentation/modules/splash/widget/splash_animation_widget.dart';
import 'package:pokemon_flutter/presentation/modules/splash/widget/splash_verion_widget.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              context.colorScheme.splashStartColor,
              context.colorScheme.splashEndColor
            ],
          ),
        ),
        child: const Column(
          children: [
            Spacer(),
            Expanded(child: SplashAnimationWidget()),
            Spacer(),
            SplashVersionWidget(),
            SizedBox(height: 32,),
          ],
        )
      ),
    );
  }
}
