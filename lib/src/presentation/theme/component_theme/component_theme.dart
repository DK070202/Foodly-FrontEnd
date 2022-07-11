import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/src/presentation/theme/color_scheme/app_colors.dart';
import 'package:foodly/src/presentation/utils/utils.dart';

import '../color_scheme/color.dart';

class ComponentThemeData {
  /// For elevated button in theme.
  static final ElevatedButtonThemeData elevatedButtonThemeData =
      ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all(AppTextStyle.button),
      minimumSize: MaterialStateProperty.all(
        Size(double.infinity, 48.h),
      ),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      backgroundColor: MaterialStateProperty.all(
        ThemeColors.primaryColor,
      ),
    ),
  );

  /// For outlined button theme data.
  static final OutlinedButtonThemeData outlinedButtonThemeData =
      OutlinedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all(AppTextStyle.body),
      minimumSize: MaterialStateProperty.all(
        Size(double.infinity, 48.h),
      ),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.r),
        ),
      ),
      side: MaterialStateProperty.all(
        BorderSide(
          color: ThemeColors.primaryColor,
        ),
      ),
    ),
  );

  /// App-bar theme data.
  static final AppBarTheme appBarTheme = AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.white,
    centerTitle: true,
    iconTheme: IconThemeData(
      color: ThemeColors.black,
      size: 24.h,
    ),

    /// TODO: change tittle text style theme.
  );

  /// Tab-bar theme.
  static TabBarTheme tabBarTheme = TabBarTheme(
    unselectedLabelStyle: AppTextStyle.h3.copyWith(fontWeight: FontWeight.w600),
    indicatorSize: TabBarIndicatorSize.label,
    labelStyle: AppTextStyle.h3.copyWith(fontWeight: FontWeight.w600),
    labelColor: AppColors.blackColor,
    unselectedLabelColor: AppColors.blackColor.withOpacity(.54),
    indicator: const BoxDecoration(color: Colors.transparent),
    overlayColor: MaterialStateProperty.all(
      Colors.transparent,
    ),
  );

  /// Divider theme.
  static final DividerThemeData dividerThemeData = DividerThemeData(
    color: const Color(0xff121212).withOpacity(.15),
    thickness: 1,
  );

  /// For border variants.
  static final baseBorder = OutlineInputBorder(
    borderSide: const BorderSide(width: 1, color: AppColors.borderColor),
    borderRadius: BorderRadius.circular(6.r),
  );

  /// Input decoration theme.
  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(
      horizontal: 20.w,
      vertical: 15.h,
    ),
    filled: true,
    fillColor: AppColors.filledColor,
    border: baseBorder,
    disabledBorder: baseBorder,
    enabledBorder: baseBorder,
    focusedBorder: baseBorder,
    hintStyle: AppTextStyle.body.copyWith(
      color: AppColors.secondaryTextColor,
    ),
    labelStyle: AppTextStyle.body,
  );
}
