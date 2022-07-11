import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/src/presentation/utils/utils.dart';
import 'package:foodly/src/presentation/widgets/svg_icon.dart';

import '../../theme/color_scheme/app_colors.dart';

class TextIconPair extends StatelessWidget {
  const TextIconPair({
    Key? key,
    required this.icon,
    required this.tittle,
    this.color,
  }) : super(key: key);
  final String icon;
  final String tittle;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgIcon(
          icon,
          color: color,
        ),
        5.width,
        Text(
          tittle,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.blackColor.withOpacity(
              .75,
            ),
          ),
        )
      ],
    );
  }
}
