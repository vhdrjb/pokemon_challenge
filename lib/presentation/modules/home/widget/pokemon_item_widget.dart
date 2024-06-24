import 'package:flutter/material.dart';
import 'package:pokemon_flutter/presentation/modules/home/model/pokemon_model.dart';

class PokemonItemWidget extends StatelessWidget {
  final PokemonDataModel data;
  const PokemonItemWidget({super.key,required this.data});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(data.name),
    );
  }
}
