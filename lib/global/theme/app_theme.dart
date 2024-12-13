import 'package:flutter/material.dart';
import 'package:hamneshin.games.apps/gen/fonts.gen.dart';
import 'package:hamneshin.games.apps/global/utils/constants/ui_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData appTheme = ThemeData(
    fontFamily: FontFamily.pelak,
    colorScheme: const ColorScheme.light(),
    dividerColor: UiColors.greyColor,
    textTheme: const TextTheme(),
  );
}
