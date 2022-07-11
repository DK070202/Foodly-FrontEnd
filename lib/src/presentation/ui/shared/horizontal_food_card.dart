import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/src/presentation/utils/utils.dart';

import '../../theme/color_scheme/app_colors.dart';
import 'text_icon_pair.dart';

class HorizontalCard extends StatelessWidget {
  const HorizontalCard({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.81,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Image.asset(
                'asset/images/Food/Horizontal/h_card$index.png',
                width: double.infinity,
              ),
            ),
          ),
          16.height,
          AppText.subHeadDark(faker.food.restaurant()),
          4.height,
          Row(
            children: [
              AppText.bodyDark(
                r'$$',
                color: AppColors.secondaryTextColor,
              ),
              8.width,
              AppText.bodyDark(
                'Chines',
                color: AppColors.secondaryTextColor,
              ),
              8.width,
              AppText.bodyDark(
                'American',
                color: AppColors.secondaryTextColor,
              ),
              8.width,
              AppText.bodyDark(
                'Deshi food',
                color: AppColors.secondaryTextColor,
              ),
            ],
          ),
          8.height,
          Row(
            children: [
              Text(
                '4.2',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              5.width,
              const TextIconPair(
                icon: 'asset/icons/star.svg',
                tittle: '200+ Ratings',
              ),
              13.width,
              TextIconPair(
                icon: 'asset/icons/clock.svg',
                tittle: '25 min',
                color: AppColors.blackColor.withOpacity(.64),
              ),
              9.width,
              const TextIconPair(
                icon: 'asset/icons/free_delivery.svg',
                tittle: 'Free',
              ),
            ],
          ),
          20.height
        ],
      ),
    );
  }
}
