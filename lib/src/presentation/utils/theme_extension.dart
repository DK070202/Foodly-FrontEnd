import 'package:flutter/material.dart';

/// Extensions for the Theme.
extension Contextsion on BuildContext {
  /// For app theme.
  ThemeData get aTheme => Theme.of(this);

  /// For text theme.
  TextTheme get textTheme => aTheme.textTheme;

  /// For color scheme.
  ColorScheme get colorScheme => aTheme.colorScheme;
}
