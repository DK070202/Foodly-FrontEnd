import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/color_scheme/app_colors.dart';

class AppTextStyle {
  /// Text style for h1.
  static final TextStyle h1 = TextStyle(
    fontSize: 34.sp,
    color: AppColors.blackColor,
    height: 42 / 34,
  );

  /// Text style for h2.
  static final TextStyle h2 = TextStyle(
    fontSize: 28.sp,
    color: AppColors.blackColor,
    height: 36 / 28,
  );

  /// Text style for h3.
  static final TextStyle h3 = TextStyle(
    fontSize: 24.sp,
    color: AppColors.blackColor,
    height: 32 / 24,
  );

  /// Text style for headline.
  static final TextStyle headline = TextStyle(
    fontSize: 30.sp,
    color: AppColors.blackColor,
    height: 38 / 30,
  );

  /// Text style for subHead.
  static final TextStyle subHead = TextStyle(
    fontSize: 20.sp,
    color: AppColors.blackColor,
  );

  /// Text style for body.
  static final TextStyle body = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    letterSpacing: -.4,
    color: AppColors.blackColor,
    height: 24 / 16,
  );

  /// Text style for button.
  static final TextStyle button = TextStyle(
    fontSize: 14.sp,
    color: AppColors.blackColor,
    height: 24 / 14,
  );

  /// Text style for caption.
  static final TextStyle caption = TextStyle(
    fontSize: 12.sp,
    color: AppColors.blackColor,
    height: 20 / 12,
  );
}
