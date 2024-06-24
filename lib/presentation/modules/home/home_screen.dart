import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_flutter/presentation/base/screen/base_stateful_screen.dart';
import 'package:pokemon_flutter/presentation/modules/home/bloc/home_bloc.dart';
import 'package:pokemon_flutter/presentation/modules/home/widget/pokemon_data_widget.dart';

class HomeScreen extends BaseStatefulScreen<HomeBloc> {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends ScreenState<HomeBloc> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(GetPokemonListEvent());
  }

  @override
  Widget buildScreen(BuildContext context) {
    return const Scaffold(
      body: PokemonDataWidget(),
    );
  }

  @override
  void listenState(BuildContext context, Object? state) {
    super.listenState(context, state);
    if (state is ShowErrorPopupState) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(state.message),
          action: SnackBarAction(
            label: 'try_again'.tr(),
            onPressed: () {
              context.read<HomeBloc>().add(GetPokemonListEvent());
            },
          ),
        ),
      );
    }
  }
}
