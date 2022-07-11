import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/src/presentation/utils/utils.dart';

import '../../../../theme/color_scheme/app_colors.dart';
import '../../../shared/shared.dart';

class AllRestaurants extends StatelessWidget {
  const AllRestaurants({
    Key? key,
    required this.onChange,
  }) : super(key: key);
  final ValueChanged<int> onChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText.h3Dark('All Restaurants'),
              AppText.bodyDark(
                'See all',
                color: AppColors.primaryColor,
              )
            ],
          ),
        ),
        24.height,
        ...List.generate(
          3,
          (index) => Padding(
            padding: EdgeInsets.only(
              bottom: 20.h,
            ),
            child: GestureDetector(
              onTap: () => onChange(index),
              child: HorizontalCard(
                index: index,
              ),
            ),
          ),
        )
      ],
    );
  }
}
