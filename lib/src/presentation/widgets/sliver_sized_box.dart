import 'package:flutter/material.dart';

class SliverSizeBox extends StatelessWidget {
  /// Creates a fixed size box. The [width] and [height] parameters can be null
  /// to indicate that the size of the box should not be constrained in
  /// the corresponding dimension.
  const SliverSizeBox({Key? key, this.width, this.height, this.child})
      : super(key: key);

  /// Creates a box that will become as large as its parent allows.
  const SliverSizeBox.expand({Key? key, this.child})
      : width = double.infinity,
        height = double.infinity,
        super(key: key);

  /// Creates a box that will become as small as its parent allows.
  const SliverSizeBox.shrink({Key? key, this.child})
      : width = 0.0,
        height = 0.0,
        super(key: key);

  /// Creates a box with the specified size.
  SliverSizeBox.fromSize({Key? key, Size? size, this.child})
      : width = size?.width,
        height = size?.height,
        super(key: key);

  /// Creates a box whose [width] and [height] are equal.
  const SliverSizeBox.square({Key? key, double? dimension, this.child})
      : width = dimension,
        height = dimension,
        super(key: key);

  /// If non-null, requires the child to have exactly this width.
  final double? width;

  /// If non-null, requires the child to have exactly this height.
  final double? height;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: height,
        width: width,
        child: child,
      ),
    );
  }
}
