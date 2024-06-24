import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokemon_flutter/presentation/theme/app_theme_color.dart';

class AppTheme {
  final ThemeData themeData;

  AppTheme._light()
      : themeData = ThemeData(
          colorScheme: AppThemeColor.light(),
          textTheme: GoogleFonts.rubikTextTheme(),
          useMaterial3: true,
        );

  AppTheme._dark()
      : themeData = ThemeData(
            colorScheme: AppThemeColor.dark(),
            textTheme: GoogleFonts.rubikTextTheme(),
            useMaterial3: true);

  factory AppTheme.theme({required Brightness brightness}) {
    if (brightness == Brightness.dark) {
      return AppTheme._dark();
    } else {
      return AppTheme._light();
    }
  }
}
