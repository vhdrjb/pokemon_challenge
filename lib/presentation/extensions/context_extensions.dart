import 'package:flutter/material.dart';
import 'package:pokemon_flutter/presentation/theme/app_theme_color.dart';

extension ContextExtensions on BuildContext {
  AppThemeColor get colorScheme =>
    Theme.of(this).brightness == Brightness.light ? AppThemeColor.light() : AppThemeColor.dark();

  TextTheme get textTheme => Theme.of(this).textTheme;


}