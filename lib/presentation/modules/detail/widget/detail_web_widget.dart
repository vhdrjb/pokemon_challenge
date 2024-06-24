import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_flutter/domain/domain.dart';
import 'package:pokemon_flutter/presentation/extensions/context_extensions.dart';
import 'package:pokemon_flutter/presentation/theme/dimensions.dart';

import 'detail_header_image.dart';
import 'detail_types_widget.dart';
import 'info_box_widget.dart';

class DetailWebWidget extends StatelessWidget {
  final PokemonEntity pokemonEntity;

  const DetailWebWidget({super.key, required this.pokemonEntity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.network(
                pokemonEntity.avatar ?? '',
                fit: BoxFit.contain,
              ),
            ),
            Expanded(
              child: Center(
                child: Padding(
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
                      Column(
                        children: [
                          SizedBox(
                            width: 300,
                            child: InfoBoxWidget(
                              icon: Icons.height,
                              value: (pokemonEntity.height ?? 0).toString(),
                              label: 'height'.tr(),
                            ),
                          ),
                          const SizedBox(height: Dimensions.margin_16,),
                          SizedBox(
                            width: 300,
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
              ),
            ),

          ],
        ),
      ),
    );
  }
}
