import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/src/presentation/theme/color_scheme/app_colors.dart';

import '../../../system_components/system_components.dart';
import '../../../utils/utils.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: const SystemAppBar(
        tittle: 'Forgot Password',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            top: 14.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText.h1Dark(
                'Forgot password',
              ),
              5.height,
              AppText.bodyLight(
                'Enter your email address and we will\nsend you a reset instructions.',
                color: AppColors.secondaryTextColor,
              ),
              34.height,
              const AppTextField(
                hintText: 'Email Address',
              ),
              26.height,
              AppButton(
                  tittle: 'RESET PASSWORD',
                  onPressed: () {
                    AutoRouter.of(context).pushNamed('/emailSent');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
