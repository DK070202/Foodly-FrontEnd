import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../theme/color_scheme/app_colors.dart';
import '../../../../utils/utils.dart';
import '../../../../widgets/widgets.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    Key? key,
    required this.onTapFilter,
    required this.onTapDropDown,
  }) : super(key: key);

  final VoidCallback onTapFilter;
  final VoidCallback onTapDropDown;

  @override
  Size get preferredSize => Size.fromHeight(77.h);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              /// For maintaining tittle at center.😄
              Opacity(
                opacity: 0,
                child: AppText.bodyDark(
                  'Filter',
                ),
              ),
              Column(
                children: [
                  AppText.captionDark(
                    'DELIVER TO',
                    height: 20 / 12,
                    color: context.colorScheme.primary,
                  ),
                  2.height,
                  Row(
                    children: [
                      Text(
                        'San Francisco',
                        style: TextStyle(
                          letterSpacing: .49,
                          color: AppColors.blackColor,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      4.width,
                      SvgIcon(
                        'asset/icons/drop_down.svg',
                        size: 18.h,
                      )
                    ],
                  ),
                ],
              ),
              AppText.bodyDark(
                'Filter',
              )
            ],
          ),
        ),
        12.height,
        const Divider(
          height: .5,
          thickness: .5,
        )
      ],
    );
  }
}
