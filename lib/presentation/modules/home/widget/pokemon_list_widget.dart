import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_flutter/presentation/extensions/context_extensions.dart';
import 'package:pokemon_flutter/presentation/modules/home/model/pokemon_model.dart';
import 'package:pokemon_flutter/presentation/modules/home/widget/pagination_scrolling.dart';
import 'package:pokemon_flutter/presentation/modules/home/widget/pokemon_data_widget.dart';
import 'package:pokemon_flutter/presentation/modules/home/widget/pokemon_loading_widget.dart';

import '../../../theme/dimensions.dart';
import '../bloc/home_bloc.dart';
import 'pokemon_item_widget.dart';

class PokemonListWidget extends StatefulWidget {
  final List<PokemonModel> data;

  const PokemonListWidget({super.key, required this.data});

  @override
  State<PokemonListWidget> createState() => _PokemonListWidgetState();
}

class _PokemonListWidgetState extends State<PokemonListWidget> {
  late List<PokemonModel> _data;
  late PaginationScrolling _scrolling;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _data = List.empty(growable: true);
    _scrollController = ScrollController();
    _scrolling = PaginationScrolling(
      scrollController: _scrollController,
      onLoad: () {
        log('load more', name: 'pokemon list');
        context.read<HomeBloc>().add(GetPokemonListEvent());
      },
    );
  }

  @override
  void didUpdateWidget(covariant PokemonListWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    Set<PokemonModel> temp = oldWidget.data.toSet();
    temp.addAll(_data);
    if (_data.length != temp.length) {
      setState(() {
        _data = temp.toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        controller: _scrollController,
        itemBuilder: (context, index) {
          if (_data[index] is PokemonListWidget) {
            return const PokemonLoadingWidget();
          } else {
            return PokemonItemWidget(
              data: _data[index] as PokemonDataModel,
            );
          }
        },
        separatorBuilder: (context, index) => Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: Dimensions.margin_16),
              child: Divider(
                color: context.colorScheme.dividerColor,
              ),
            ),
        itemCount: _data.length);
  }
}
