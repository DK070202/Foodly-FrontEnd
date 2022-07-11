import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../theme/color_scheme/app_colors.dart';
import '../../../../utils/utils.dart';
import '../../../../widgets/sliver_sized_box.dart';

class FoodItemSubList extends StatelessWidget {
  const FoodItemSubList({
    Key? key,
    required this.tittle,
    required this.onTapItem,
  }) : super(key: key);
  final String tittle;
  final ValueChanged<int> onTapItem;

  @override
  Widget build(BuildContext context) {
    return MultiSliver(children: [
      SliverSizeBox(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: AppText.subHeadDark(tittle),
        ),
      ),
      24.sHeight,
      SliverList(
          delegate: SliverChildBuilderDelegate(
        (context, index) {
          return GestureDetector(
            onTap: () => onTapItem(index),
            child: ItemDetailsHorizontalCard(
              index: index,
            ),
          );
        },
        childCount: 3,
      ))
    ]);
  }
}

class ItemDetailsHorizontalCard extends StatelessWidget {
  const ItemDetailsHorizontalCard({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    const smallTextStyle = TextStyle(
      fontSize: 14,
      height: 20 / 14,
      letterSpacing: -.25,
    );
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h, right: 20.w, left: 20.w),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: Image.asset(
                  'asset/images/ItemDetails/featured${index + 1}.png',
                  height: 110.h,
                  width: 110.h,
                ),
              ),
              18.width,
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    faker.food.dish(),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackColor,
                      height: 24 / 18,
                      letterSpacing: -.34,
                    ),
                  ),
                  6.height,
                  AppText.bodyLight(
                    'Shortbread, chocolate turtle cookies, and red velvet.',
                    color: AppColors.blackColor.withOpacity(.64),
                  ),
                  12.height,
                  Row(
                    children: [
                      Text(
                        r'$$',
                        style: smallTextStyle.copyWith(
                          color: AppColors.blackColor.withOpacity(.74),
                        ),
                      ),
                      8.width,
                      Text(
                        'Chinese',
                        style: smallTextStyle.copyWith(
                          color: AppColors.blackColor.withOpacity(.64),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'USD7.4',
                        style: smallTextStyle.copyWith(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ],
              ))
            ],
          ),
          20.height,
          // We can change it with itemCount-1.
          if (index != 2) const Divider(height: 1)
        ],
      ),
    );
  }
}
