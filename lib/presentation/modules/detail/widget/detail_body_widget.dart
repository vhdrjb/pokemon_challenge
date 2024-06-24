import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_flutter/presentation/component/widget_error_handler_component.dart';
import 'package:pokemon_flutter/presentation/extensions/context_extensions.dart';
import 'package:pokemon_flutter/presentation/modules/detail/bloc/detail_bloc.dart';
import 'package:pokemon_flutter/presentation/modules/detail/widget/detail_widget.dart';
import 'package:pokemon_flutter/presentation/theme/dimensions.dart';

import '../../../widgets/loading_text_widget.dart';
import 'detail_web_widget.dart';

class DetailBodyWidget extends WidgetErrorHandlerComponent<DetailBloc,
    DetailState, ShowPokemonInfoState, ShowDetailErrorState> {
  const DetailBodyWidget({super.key});

  @override
  Widget buildErrorState(BuildContext context, ShowDetailErrorState state) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error_outline_outlined,
              color: context.colorScheme.errorColor,
            ),
            const SizedBox(
              height: Dimensions.margin_8,
            ),
            FittedBox(
              child: Text(
                state.error,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.labelMedium
                    ?.copyWith(color: context.colorScheme.errorColor),
              ),
            ),
            const SizedBox(
              height: Dimensions.margin_32,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: context.colorScheme.secondaryTextColor),
                onPressed: () {
                  context.read<DetailBloc>().add(GetPokemonInfoEvent());
                },
                child: const Text('try_again').tr()),
            TextButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: context.colorScheme.cancelTextColor),
                onPressed: () {
                  context.read<DetailBloc>().add(BackEvent());
                },
                child: const Text('return').tr())
          ],
        ),
      ),
    );
  }

  @override
  Widget buildOnInit(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Center(child: LoadingTextWidget(text: 'loading_info'.tr())));
  }

  @override
  Widget buildOnState(BuildContext context, ShowPokemonInfoState state) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return DetailWidget(pokemonEntity: state.pokemonEntity);
        }  else {
          return DetailWebWidget(pokemonEntity: state.pokemonEntity);
        }
      },
    );
  }
}
