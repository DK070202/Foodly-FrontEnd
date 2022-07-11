import 'package:flutter/material.dart';

/// This widget will call [onNotification] call back when scroll position is at
/// max positive extent.
class Paginator extends StatelessWidget {
  const Paginator({
    Key? key,
    required this.onNotification,
    required this.child,
  }) : super(key: key);
  final VoidCallback onNotification;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification.metrics.atEdge && notification.metrics.pixels > 0) {
          onNotification();
        }
        return false;
      },
      child: child,
    );
  }
}
