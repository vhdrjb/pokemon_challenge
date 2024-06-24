import 'package:flutter/material.dart';
import 'package:pokemon_flutter/presentation/component/widget_error_handler_component.dart';
import 'package:pokemon_flutter/presentation/extensions/context_extensions.dart';
import 'package:pokemon_flutter/presentation/modules/home/bloc/home_bloc.dart';
import 'package:pokemon_flutter/presentation/modules/home/widget/pokemon_list_widget.dart';

import 'pokemon_loading_widget.dart';

class PokemonDataWidget extends WidgetErrorHandlerComponent<HomeBloc, HomeState,
    ShowPokemonListDataState, ShowErrorState> {
  const PokemonDataWidget({super.key});

  @override
  Widget buildErrorState(BuildContext context, ShowErrorState state) {
    return Center(
      child: Column(
        children: [
          Icon(
            Icons.error_outline_outlined,
            color: context.colorScheme.errorColor,
          ),
          FittedBox(
            child: Text(
              state.error,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.labelMedium
                  ?.copyWith(color: context.colorScheme.errorColor),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget buildOnInit(BuildContext context) {
    return const Center(child: PokemonLoadingWidget());
  }

  @override
  Widget buildOnState(BuildContext context, ShowPokemonListDataState state) {
    return PokemonListWidget(data: state.data);
  }
}
