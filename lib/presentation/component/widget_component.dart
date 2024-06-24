import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class WidgetComponent<B extends BlocBase<S>, S, C extends S>
    extends StatelessWidget {
  const WidgetComponent({super.key});

  void onInitialization(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    onInitialization(context);
    return BlocBuilder<B,S>(
      bloc: context.read<B>(),
      buildWhen: shouldRebuild,
      builder: _checkRebuild,
    );
  }

  Widget _checkRebuild(BuildContext context, state) {
    if (state.runtimeType == C) {
      return buildOnState(context, state);
    } else {
      return buildOnInit(context);
    }
  }

  Widget buildOnState(BuildContext context, C state);

  Widget buildOnInit(BuildContext context);

  bool shouldRebuild(previous, current) {
    return current.runtimeType == C;
  }
}
