import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/src/presentation/utils/utils.dart';

import '../../../../system_components/small_outlined_button.dart';
import '../../../../theme/color_scheme/app_colors.dart';
import '../../../../widgets/sliver_sized_box.dart';
import '../../../../widgets/widgets.dart';
import '../../../shared/text_icon_pair.dart';

class ItemInformation extends StatelessWidget {
  const ItemInformation({
    Key? key,
    required this.onPressedTakeAway,
  }) : super(key: key);
  final VoidCallback onPressedTakeAway;

  @override
  Widget build(BuildContext context) {
    return SliverSizeBox(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText.h3Dark(faker.food.restaurant()),
            8.height,
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
            16.height,
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
              ],
            ),
            20.height,
            Row(
              children: [
                const _IconDescription(
                  icon: 'asset/icons/free_deliver.svg',
                  tittle: 'Free',
                  subTittle: 'Delivery',
                ),
                20.width,
                const _IconDescription(
                  icon: 'asset/icons/delivery_time.svg',
                  tittle: '25',
                  subTittle: 'Minutes',
                ),
                const Spacer(),
                SmallOutlinedButton(
                  tittle: 'TAKE AWAY',
                  onPressed: onPressedTakeAway,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _IconDescription extends StatelessWidget {
  const _IconDescription({
    Key? key,
    required this.icon,
    required this.tittle,
    required this.subTittle,
  }) : super(key: key);
  final String icon;
  final String tittle;
  final String subTittle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox.square(
          dimension: 24.w,
          child: SvgIcon(icon),
        ),
        8.width,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText.bodyDark(
              tittle,
              fontWeight: Weight.medium,
              height: 24 / 16,
            ),
            AppText.captionDark(
              subTittle,
              height: 20 / 12,
              color: Colors.black.withOpacity(.64),
            )
          ],
        )
      ],
    );
  }
}
