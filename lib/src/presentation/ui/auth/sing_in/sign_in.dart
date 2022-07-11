import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/src/presentation/theme/color_scheme/app_colors.dart';

import '../../../system_components/system_components.dart';
import '../../../utils/utils.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: const SystemAppBar(
        tittle: 'Sign In',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              14.height,
              AppText.h1Dark(
                'Welcome to',
              ),
              5.height,
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Enter your Phone number or Email\nfor sign in, Or ',
                      style: AppTextStyle.body
                          .copyWith(color: AppColors.secondaryTextColor),
                    ),
                    TextSpan(
                      text: 'Create new account',
                      style: AppTextStyle.body.copyWith(
                        color: AppColors.primaryColor,
                      ),
                      recognizer: TapRecognizer(() {
                        AutoRouter.of(context).pushNamed('/createAccount');
                      }),
                    ),
                  ],
                ),
              ),
              24.height,
              const AppTextField(
                hintText: 'Email',
              ),
              14.height,
              const AppTextField(
                hintText: 'Password',
              ),
              20.height,
              GestureDetector(
                  onTap: () =>
                      AutoRouter.of(context).pushNamed('/forgetPassword'),
                  child: Align(child: AppText.captionDark('Forgot password?'))),
              20.height,
              AppButton(tittle: 'SIGN IN', onPressed: () {}),
              24.height,
              Align(child: AppText.bodyDark('Or')),
              24.height,
              SocialButton(type: ButtonType.facebook, onPressed: () {}),
              16.height,
              SocialButton(type: ButtonType.google, onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
