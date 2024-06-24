import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_flutter/presentation/component/widget_error_handler_component.dart';
import 'package:pokemon_flutter/presentation/extensions/context_extensions.dart';
import 'package:pokemon_flutter/presentation/modules/home/bloc/home_bloc.dart';
import 'package:pokemon_flutter/presentation/modules/home/widget/pokemon_list_widget.dart';
import 'package:pokemon_flutter/presentation/widgets/loading_text_widget.dart';

import '../../../theme/dimensions.dart';

class PokemonDataWidget extends WidgetErrorHandlerComponent<HomeBloc, HomeState,
    ShowPokemonListDataState, ShowErrorState> {
  const PokemonDataWidget({super.key});

  @override
  Widget buildErrorState(BuildContext context, ShowErrorState state) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.error_outline_outlined,
            color: context.colorScheme.errorColor,
          ),
          const SizedBox(height: Dimensions.margin_16,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimensions.margin_16),
            child: FittedBox(
              child: Text(
                state.error,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.bodyMedium
                    ?.copyWith(color: context.colorScheme.errorColor),
              ),
            ),
          ),
          const SizedBox(
            height: Dimensions.margin_32,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: context.colorScheme.secondaryTextColor),
              onPressed: () {
                context.read<HomeBloc>().add(GetPokemonListEvent());
              },
              child: const Text('try_again').tr()),
        ],
      ),
    );
  }

  @override
  Widget buildOnInit(BuildContext context) {
    return Center(child: LoadingTextWidget(text: 'loading'.tr()));
  }

  @override
  Widget buildOnState(BuildContext context, ShowPokemonListDataState state) {
    return PokemonListWidget(data: state.data);
  }
}
