import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/src/presentation/utils/space_utils.dart';
import 'package:foodly/src/presentation/widgets/svg_icon.dart';

/// Aspect ratio of image is 1.6
class ItemDetailsAppBar extends StatelessWidget {
  const ItemDetailsAppBar({
    Key? key,
    required this.onPressedShare,
    required this.onPressedSearch,
  }) : super(key: key);

  final VoidCallback onPressedShare;
  final VoidCallback onPressedSearch;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 4,
      collapsedHeight: kToolbarHeight,
      pinned: true,
      leadingWidth: 50.w,
      leading: Padding(
        padding: EdgeInsets.only(left: 10.w),
        child: const SvgIcon(
          'asset/icons/back.svg',
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
            onPressed: onPressedShare,
            icon: SvgIcon(
              'asset/icons/share.svg',
              size: 20.h,
            )),
        IconButton(
            onPressed: onPressedSearch,
            icon: SvgIcon('asset/icons/search.svg', size: 20.h)),
        10.width,
      ],
      expandedHeight: 375.w / 1.6,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          'asset/images/Header/Header-image.png',
          width: 375.w,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
