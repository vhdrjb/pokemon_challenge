import 'package:flutter/material.dart';
import 'package:pokemon_flutter/domain/pokemon/pokemon_type_entity.dart';
import 'package:pokemon_flutter/presentation/theme/dimensions.dart';

import 'detail_type_item_widget.dart';

class DetailTypesWidget extends StatelessWidget {
  final Iterable<PokemonTypeEntity>? types;
  const DetailTypesWidget({super.key,this.types});

  @override
  Widget build(BuildContext context) {
    if (types == null) {
      return Container();
    }

    return Wrap(
      runSpacing: Dimensions.margin_16,
      spacing: Dimensions.margin_8,
      children: [
        ...types!.map((e) => DetailTypeItemWidget(type: e,),)
      ],
    );
  }
}
