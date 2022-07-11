import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodly/src/presentation/theme/color_scheme/app_colors.dart';
import 'package:foodly/src/presentation/ui/preauth/intro/compo/data.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../system_components/system_components.dart';
import '../../../utils/utils.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final valueNotifier = ValueNotifier<int>(0);

  void onPageChanged(int page) {
    valueNotifier.value = page;
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Column(
        children: [
          Expanded(
              child: PageView.builder(
            onPageChanged: onPageChanged,
            itemBuilder: (context, index) {
              final data = IntroData.introData[index];
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    60.height,
                    Expanded(
                      child: SvgPicture.asset(
                        data.illustration,
                        fit: BoxFit.contain,
                      ),
                    ),
                    32.4.height,
                    AppText.headlineDark(
                      data.title,
                    ),
                    20.height,
                    AppText.bodyDark(
                      data.subTittle,
                      color: AppColors.secondaryTextColor,
                      textAlign: TextAlign.center,
                    ),
                    40.height,
                  ],
                ),
              );
            },
            itemCount: IntroData.introData.length,
          )),
          AnimatedBuilder(
            animation: valueNotifier,
            builder: (context, child) => AnimatedSmoothIndicator(
              activeIndex: valueNotifier.value,
              count: 3,
              effect: WormEffect(
                  activeDotColor: context.colorScheme.primary,
                  dotColor: AppColors.secondaryTextColor.withOpacity(.2),
                  dotHeight: 5,
                  dotWidth: 8,
                  radius: 100),
            ),
          ),
          60.height,
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            child: AppButton(
              tittle: 'GET STARTED',
              onPressed: () {
                AutoRouter.of(context).pushNamed('/signIn');
              },
            ),
          ),
          80.height,
        ],
      ),
    );
  }
}
