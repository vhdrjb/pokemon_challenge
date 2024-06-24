import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_flutter/domain/domain.dart';
import 'package:pokemon_flutter/presentation/extensions/context_extensions.dart';
import 'package:pokemon_flutter/presentation/theme/dimensions.dart';

import 'detail_header_image.dart';
import 'detail_types_widget.dart';
import 'info_box_widget.dart';

class DetailWidget extends StatelessWidget {
  final PokemonEntity pokemonEntity;

  const DetailWidget({super.key, required this.pokemonEntity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailHeaderImage(
              avatar: pokemonEntity.avatar,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: Dimensions.margin_8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pokemonEntity.name,
                    style: context.textTheme.headlineMedium?.copyWith(),
                  ),
                  const SizedBox(height: Dimensions.margin_16,),
                  DetailTypesWidget(types: pokemonEntity.types,),
                  const SizedBox(height: Dimensions.margin_24,),
                  Row(
                    children: [
                      Expanded(
                        child: InfoBoxWidget(
                          icon: Icons.height,
                          value: (pokemonEntity.height ?? 0).toString(),
                          label: 'height'.tr(),
                        ),
                      ),
                      const SizedBox(width: Dimensions.margin_16,),
                      Expanded(
                        child: InfoBoxWidget(
                          icon: Icons.monitor_weight_outlined,
                          value: (pokemonEntity.weight ?? 0).toString(),
                          label: 'weight'.tr(),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
