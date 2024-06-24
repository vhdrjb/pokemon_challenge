import 'package:flutter/material.dart';

abstract class AppThemeColor extends ColorScheme {
  const AppThemeColor._light({
    required super.primary,
    required super.onPrimary,
    required super.onSecondary,
    required super.surface,
    required Color super.surfaceTint,
  }) : super.light();

  const AppThemeColor._dark({
    required super.primary,
    required super.onPrimary,
    required super.onSecondary,
    required super.surface,
    required Color super.surfaceTint,
  }) : super.dark();

  factory AppThemeColor.light() {
    return const _LightAppThemeColor();
  }

  factory AppThemeColor.dark() {
    return const _DarkAppThemeColor();
  }


  Color get splashStartColor;
  Color get splashEndColor;
  Color get errorColor;
  Color get loadingColor;
  Color get loadingStartColor;
  Color get loadingEndColor;
  Color get dividerColor;

}

class _LightAppThemeColor extends AppThemeColor {
  const _LightAppThemeColor()
      : super._light(
            primary: const Color(0xff232122),
            onPrimary: const Color(0xff445566),
            onSecondary: const Color(0xff667788),
            surface: const Color(0xff873454),
            surfaceTint: const Color(0xff980922));

  @override
  Color get splashEndColor => const Color(0xff39f8af);

  @override
  Color get splashStartColor => const Color(0xff1fd349);

  @override
  Color get errorColor => const Color(0xff940820);

  @override
  Color get loadingColor => const Color(0xff10864b);

  @override
  Color get loadingEndColor => const Color(0xff07381b);

  @override
  Color get loadingStartColor => const Color(0xffd6e1cf);

  @override
  Color get dividerColor => const Color(0xff4d4d50);
}

class _DarkAppThemeColor extends AppThemeColor {
  const _DarkAppThemeColor()
      : super._dark(
            primary: const Color(0xff232122),
            onPrimary: const Color(0xff445566),
            onSecondary: const Color(0xff667788),
            surface: const Color(0xff873454),
            surfaceTint: const Color(0xff980922));

  @override
  Color get splashEndColor => const Color(0xff1a4228);

  @override
  Color get splashStartColor => const Color(0xff245d07);

  @override
  Color get errorColor => const Color(0xfff14d64);

  @override
  Color get loadingColor => const Color(0xff37e38c);

  @override
  Color get loadingEndColor => const Color(0xff369f59);

  @override
  Color get loadingStartColor => const Color(0xff8bd797);

  @override
  Color get dividerColor => const Color(0xffa9a9a9);
}
