import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_flutter/presentation/extensions/context_extensions.dart';
import 'package:pokemon_flutter/presentation/modules/detail/bloc/detail_bloc.dart';
import 'package:pokemon_flutter/presentation/theme/dimensions.dart';

import 'header_image_background_clipper.dart';

class DetailHeaderImage extends StatelessWidget {
  final String? avatar;

  const DetailHeaderImage({super.key, this.avatar});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4 + 50,
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipPath(
              clipper: HeaderImageBackgroundClipper(),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    gradient: RadialGradient(
                  colors: [
                    context.colorScheme.detailEndColor,
                    context.colorScheme.detailStartColor,
                  ],
                  radius: 1.2,
                )),
              ),
            ),
          ),
          Positioned(
            top: 65,
            left: 0,
            right: 0,
            bottom: 0,
            child: Center(
              child: Image.network(
                avatar ?? '',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            left: Dimensions.margin_8,
            top: Dimensions.margin_64,
            child: IconButton(
              onPressed: () {
                context.read<DetailBloc>().add(BackEvent());
              },
              icon: const Icon(Icons.arrow_back_ios_new),
            ),
          ),
        ],
      ),
    );
  }
}
