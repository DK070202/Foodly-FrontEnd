import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TapRecognizer extends TapGestureRecognizer {
  TapRecognizer(this.onPressed);
  final VoidCallback onPressed;

  @override
  GestureTapCallback? get onTap => onPressed;
}
