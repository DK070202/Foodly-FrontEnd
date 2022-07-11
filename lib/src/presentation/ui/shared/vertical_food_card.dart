import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/src/presentation/utils/utils.dart';

import '../../theme/color_scheme/app_colors.dart';

class VerticalFoodCard extends StatelessWidget {
  const VerticalFoodCard({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Image.asset(
                index.isEven
                    ? 'asset/images/Food/Featured/featured1.png'
                    : 'asset/images/Food/Featured/featured2.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          14.height,
          AppText.subHeadDark(
            faker.food.dish(),
            height: 1,
          ),
          2.height,
          AppText.bodyDark(
            'Colarodo, San Francisco',
            color: AppColors.secondaryTextColor,
          ),
          7.height,
          Row(
            children: [
              Container(
                child: Text(
                  '4.5',
                  style: TextStyle(color: Colors.white, fontSize: 12.sp),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  color: AppColors.primaryColor,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                  vertical: 4.h,
                ),
              ),
              12.width,
              Text(
                '25min',
                style: TextStyle(
                    height: 1,
                    color: AppColors.blackColor.withOpacity(.74),
                    fontWeight: FontWeight.w500,
                    letterSpacing: -.28),
              ),
              8.width,
              Text(
                'Free delivery',
                style: TextStyle(
                    height: 1,
                    color: AppColors.blackColor.withOpacity(.74),
                    fontWeight: FontWeight.w500,
                    letterSpacing: -.28),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
