import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/src/presentation/utils/space_utils.dart';

import '../../../system_components/app_scaffold.dart';
import '../../../widgets/widgets.dart';
import 'home_compo/home_compo.dart';

class Home extends HookWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: HomeAppBar(
        onTapDropDown: () {
          /// Todo : On tap drop down.
        },
        onTapFilter: () {
          /// Todo : on tap filter.
        },
      ),
      body: Paginator(
        onNotification: () {
          /// Paginate list.
        },
        child: ListView(
          children: [
            24.height,
            const HomeCarousel(),
            34.height,
            FeaturePartner(
              onTapItem: (int value) {
                /// On tap card.
              },
            ),
            34.height,
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 18.w,
              ),
              child: AspectRatio(
                aspectRatio: 2,
                child: Image.asset('asset/images/Banners/Banner.png'),
              ),
            ),
            34.height,
            BestPicks(
              onTapItem: (int value) {
                /// On tap card.
              },
            ),
            34.height,
            AllRestaurants(
              onChange: (int value) {
                /// On tap card.
              },
            )
          ],
        ),
      ),
    );
  }
}
