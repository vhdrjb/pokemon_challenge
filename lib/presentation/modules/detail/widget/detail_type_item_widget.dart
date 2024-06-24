import 'package:flutter/material.dart';
import 'package:pokemon_flutter/domain/pokemon/pokemon_type_entity.dart';
import 'package:pokemon_flutter/presentation/extensions/context_extensions.dart';
import 'package:pokemon_flutter/presentation/theme/dimensions.dart';

class DetailTypeItemWidget extends StatelessWidget {
  final PokemonTypeEntity type;

  const DetailTypeItemWidget({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
          color: context.colorScheme.typesColor,
          borderRadius: BorderRadius.circular(Dimensions.margin_16),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimensions.margin_16,vertical: Dimensions.margin_4),
          child: Text(type.name,style: context.textTheme.bodyMedium?.copyWith(
            color: context.colorScheme.secondaryTextColor
          ),),
        ));
  }
}
