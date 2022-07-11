import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/src/presentation/utils/utils.dart';

import '../../../../theme/color_scheme/app_colors.dart';
import '../../../shared/shared.dart';

class FeaturePartner extends StatelessWidget {
  const FeaturePartner({
    Key? key,
    required this.onTapItem,
  }) : super(key: key);

  /// We can change this too other model type.
  final ValueChanged<int> onTapItem;

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
              AppText.h3Dark('Featured Partners'),
              AppText.bodyDark(
                'See all',
                color: AppColors.primaryColor,
              )
            ],
          ),
        ),
        24.height,
        SizedBox(
          height: 254.h,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(
                left: index == 0 ? 20 : 14,
                right: index == 9 ? 20 : 0,
              ),
              child: VerticalFoodCard(
                index: index,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
