import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/app/core/constants/colors.dart';
import 'package:flutter_boilerplate/app/core/themes/font_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    primaryColor: ColorPalette.primaryColor,
    hintColor: Colors.black,
    textTheme: FontTheme.lightThemeData,
  );
}
