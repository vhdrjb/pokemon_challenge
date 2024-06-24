import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_flutter/presentation/component/widget_component.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_flutter/presentation/extensions/context_extensions.dart';
import 'package:pokemon_flutter/presentation/modules/splash/bloc/splash_bloc.dart';

class SplashVersionWidget extends WidgetComponent<SplashBloc,SplashState,ShowVersionState> {
  const SplashVersionWidget({super.key});


  @override
  Widget buildOnInit(BuildContext context) {
    return const SizedBox.shrink();
  }

  @override
  Widget buildOnState(BuildContext context, ShowVersionState state) {
    return Text(state.version,style: context.textTheme.labelMedium,);
  }

}