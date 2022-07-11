import 'package:flutter/material.dart';

import 'color.dart';

class AppColorScheme {
  static final ColorScheme lightScheme = ColorScheme(
    brightness: Brightness.light,
    primary: ThemeColors.primaryColor,
    onPrimary: Colors.white,
    secondary: ThemeColors.primaryColor,
    onSecondary: Colors.white,
    error: ThemeColors.errorColor,
    onError: ThemeColors.onError,
    background: ThemeColors.scaffoldBackGroundColor,
    onBackground: Colors.black,
    surface: Colors.white,
    onSurface: Colors.white,
  );
}
