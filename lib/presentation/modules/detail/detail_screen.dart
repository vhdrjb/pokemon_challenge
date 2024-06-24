import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_flutter/presentation/base/screen/base_stateful_screen.dart';
import 'package:pokemon_flutter/presentation/modules/detail/bloc/detail_bloc.dart';
import 'package:pokemon_flutter/presentation/modules/detail/widget/detail_body_widget.dart';

class DetailScreen extends BaseStatefulScreen<DetailBloc> {
  const DetailScreen({super.key});

  @override
  State<StatefulWidget> createState() => _DetailState();
}

class _DetailState extends ScreenState<DetailBloc> {

  @override
  void initState() {
    super.initState();
    context.read<DetailBloc>().add(GetPokemonInfoEvent());
  }
  @override
  Widget buildScreen(BuildContext context) {
    return const DetailBodyWidget();
  }
}
