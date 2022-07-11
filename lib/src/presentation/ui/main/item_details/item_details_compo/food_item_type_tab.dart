import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodItemType extends StatelessWidget {
  const FoodItemType({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: SliverAppBar(
          toolbarHeight: 0,
          bottom: TabBar(
            onTap: onTap,
            labelPadding: EdgeInsets.only(right: 20.w),
            padding: EdgeInsets.only(left: 20.w, right: 0.w),
            isScrollable: true,
            tabs: ['Lamb', 'Seafood', 'Appetizers', 'Dim Sum']
                .map((e) => Tab(text: e))
                .toList(),
          ),
        ),
      ),
    );
  }
}
