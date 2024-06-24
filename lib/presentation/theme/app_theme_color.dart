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

  Color get secondaryTextColor;

  Color get cancelTextColor;

  Color get detailStartColor;

  Color get detailEndColor;

  Color get typesColor;

  Color get primaryTextColor;

  Color get infoHintColor;
}

class _LightAppThemeColor extends AppThemeColor {
  const _LightAppThemeColor()
      : super._light(
            primary: const Color(0xff3dc0b1),
            onPrimary: const Color(0xffec548f),
            onSecondary: const Color(0xffec69be),
            surface: const Color(0xffe7eae7),
            surfaceTint: const Color(0xfff52b4e));

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

  @override
  Color get secondaryTextColor => const Color(0xffffffff);

  @override
  Color get cancelTextColor => const Color(0xff2d2d2d);

  @override
  Color get detailEndColor => const Color(0xff00ff57);

  @override
  Color get detailStartColor => const Color(0xff08b032);

  @override
  Color get typesColor => const Color(0xff0086ff);

  @override
  Color get primaryTextColor => const Color(0xff1c1c1c);

  @override
  Color get infoHintColor => const Color(0xff858585);
}

class _DarkAppThemeColor extends AppThemeColor {
  const _DarkAppThemeColor()
      : super._dark(
            primary: const Color(0xff232122),
            onPrimary: const Color(0xff445566),
            onSecondary: const Color(0xff667788),
            surface: const Color(0xff86f579),
            surfaceTint: const Color(0xff980922));

  @override
  Color get cancelTextColor => throw UnimplementedError();

  @override
  Color get detailEndColor => throw UnimplementedError();

  @override
  Color get detailStartColor => throw UnimplementedError();

  @override
  Color get dividerColor => throw UnimplementedError();

  @override
  Color get errorColor => throw UnimplementedError();

  @override
  Color get loadingColor => throw UnimplementedError();

  @override
  Color get loadingEndColor => throw UnimplementedError();

  @override
  Color get loadingStartColor => throw UnimplementedError();

  @override
  Color get secondaryTextColor => throw UnimplementedError();

  @override
  Color get splashEndColor => throw UnimplementedError();

  @override
  Color get splashStartColor => throw UnimplementedError();

  @override
  Color get typesColor => throw UnimplementedError();

  @override
  Color get primaryTextColor => throw UnimplementedError();

  @override
  Color get infoHintColor => throw UnimplementedError();
}
