import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_flutter/presentation/extensions/context_extensions.dart';
import 'package:shimmer/shimmer.dart';

class LoadingTextWidget extends StatelessWidget {
  final String text;

  const LoadingTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Shimmer(
        direction: ShimmerDirection.ltr,
        period: const Duration(seconds: 5),
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              context.colorScheme.loadingStartColor,
              context.colorScheme.loadingEndColor,
            ]),
        child: Text(
          text,
          style: context.textTheme.bodyLarge,
        ));
  }
}
