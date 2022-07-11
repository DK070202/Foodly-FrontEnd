import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../theme/color_scheme/app_colors.dart';
import '../../../../utils/utils.dart';
import '../../../../widgets/sliver_sized_box.dart';

class FeatureItemWrapper extends StatelessWidget {
  const FeatureItemWrapper({
    Key? key,
    required this.onTapItem,
  }) : super(key: key);
  final ValueChanged<int> onTapItem;

  @override
  Widget build(BuildContext context) {
    return SliverSizeBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: AppText.subHeadDark('Featured Items'),
          ),
          18.height,
          SizedBox(
            /// This is for aspect ratio.
            ///
            /// When we want height according aspect then we can multiply it
            /// width.
            height: 198.w,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(
                  left: index == 0 ? 20.w : 14.w,
                  right: index == 2 ? 20.w : 0,
                ),
                child: SmallFeaturedItem(
                  index: index,
                ),
              ),
              itemCount: 3,
            ),
          )
        ],
      ),
    );
  }
}

class SmallFeaturedItem extends StatelessWidget {
  const SmallFeaturedItem({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    const smallTextStyle = TextStyle(
        fontSize: 14,
        color: AppColors.secondaryTextColor,
        height: 20 / 14,
        letterSpacing: -.25);
    return SizedBox(
      width: 140.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'asset/images/ItemDetails/featured${index + 1}.png',
              width: 140.w,
              height: 140.w,
            ),
          ),
          10.height,
          Row(
            children: [
              Text(
                faker.food.dish().shrink(14),
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                ),
              ),
            ],
          ),
          4.height,
          Row(
            children: [
              const Text(
                r'$$',
                style: smallTextStyle,
              ),
              8.width,
              const Text(
                'Chinese',
                style: smallTextStyle,
              )
            ],
          ),
        ],
      ),
    );
  }
}
