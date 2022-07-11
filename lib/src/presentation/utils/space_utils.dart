import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/sliver_sized_box.dart';

extension SmartHeight on num {
  SizedBox get height => SizedBox(height: h);

  SizedBox get width => SizedBox(width: w);

  SliverSizeBox get sHeight => SliverSizeBox(height: h);

  SliverSizeBox get sWidth => SliverSizeBox(width: w);
}
