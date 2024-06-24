import 'package:flutter/material.dart';
import 'package:pokemon_flutter/presentation/extensions/context_extensions.dart';
import 'package:pokemon_flutter/presentation/theme/dimensions.dart';

class InfoBoxWidget extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;

  const InfoBoxWidget(
      {super.key,
      required this.label,
      required this.value,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: context.colorScheme.infoHintColor,
            ),
            SizedBox(width: Dimensions.margin_8,),
            Text(
              label,
              style: context.textTheme.titleMedium
                  ?.copyWith(color: context.colorScheme.infoHintColor),
            )
          ],
        ),
        DecoratedBox(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.margin_16),
              border: Border.all(color: context.colorScheme.infoHintColor)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: FittedBox(
                child: Text(
                  value,
                  style: context.textTheme.bodyLarge,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
