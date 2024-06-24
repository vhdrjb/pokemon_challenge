import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class WidgetErrorHandlerComponent<B extends BlocBase<
    S>, S, C extends S, E extends S> extends StatelessWidget {
  const WidgetErrorHandlerComponent({super.key});

  void onInitialization(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    onInitialization(context);
    return BlocBuilder<B, S>(
      bloc: context.read<B>(),
      buildWhen: shouldRebuild,
      builder: _checkRebuild,
    );
  }

  Widget _checkRebuild(BuildContext context, state) {
    if (state.runtimeType == C) {
      return buildOnState(context, state);
    }else if (state.runtimeType == E) {
      return buildErrorState(context,state);
    }else {
      return buildOnInit(context);
    }
  }

  Widget buildErrorState(BuildContext context,E state);

  Widget buildOnState(BuildContext context, C state);

  Widget buildOnInit(BuildContext context);

  bool shouldRebuild(previous, current) {
    return current.runtimeType == C || current.runtimeType  == E;
  }
}
