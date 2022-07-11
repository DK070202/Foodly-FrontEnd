import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/src/presentation/utils/utils.dart';

import '../theme/color_scheme/app_colors.dart';

class SmallOutlinedButton extends StatelessWidget {
  const SmallOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.tittle,
  }) : super(key: key);
  final VoidCallback onPressed;
  final String tittle;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(6.r),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 18.w,
          vertical: 14.5.h,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.r),
            border: Border.all(
              color: AppColors.primaryColor,
            )),
        child: AppText.captionDark(
          tittle,
          color: AppColors.primaryColor,
          height: 1,
          fontWeight: Weight.semiBold,
        ),
      ),
    );
  }
}
