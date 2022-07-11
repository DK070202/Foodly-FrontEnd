import 'package:flutter/material.dart';
import 'package:foodly/src/presentation/theme/color_scheme/color_scheme.dart';
import 'package:foodly/src/presentation/theme/component_theme/component_theme.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
      androidOverscrollIndicator: AndroidOverscrollIndicator.stretch,
      elevatedButtonTheme: ComponentThemeData.elevatedButtonThemeData,
      outlinedButtonTheme: ComponentThemeData.outlinedButtonThemeData,
      dividerTheme: ComponentThemeData.dividerThemeData,
      appBarTheme: ComponentThemeData.appBarTheme,
      colorScheme: AppColorScheme.lightScheme,
      scaffoldBackgroundColor: Colors.white,
      inputDecorationTheme: ComponentThemeData.inputDecorationTheme,
      tabBarTheme: ComponentThemeData.tabBarTheme);
}
