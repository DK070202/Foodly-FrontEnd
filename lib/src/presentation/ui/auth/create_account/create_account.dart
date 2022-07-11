import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/src/presentation/theme/color_scheme/app_colors.dart';

import '../../../system_components/system_components.dart';
import '../../../utils/utils.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: const SystemAppBar(
        tittle: 'Sign Up',
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
                'Create Account',
              ),
              5.height,
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Enter your Name, Email and Password\nfor sign up. ',
                      style: AppTextStyle.body
                          .copyWith(color: AppColors.secondaryTextColor),
                    ),
                    TextSpan(
                      text: 'Already have account?',
                      style: AppTextStyle.body.copyWith(
                        color: AppColors.primaryColor,
                      ),
                      recognizer: TapRecognizer(() {}),
                    ),
                  ],
                ),
              ),
              24.height,
              const AppTextField(
                hintText: 'Full Name',
              ),
              14.height,
              const AppTextField(
                hintText: 'Email Address',
              ),
              14.height,
              const AppTextField(
                hintText: 'Password',
              ),
              24.height,
              AppButton(tittle: 'SIGN UP', onPressed: () {}),
              24.height,
              Align(
                child: AppText.bodyDark(
                  'By Signing up you agree to our Terms Conditions & Privacy Policy.',
                  color: AppColors.secondaryTextColor,
                  textAlign: TextAlign.center,
                ),
              ),
              20.height,
              Align(child: AppText.bodyDark('Or')),
              20.height,
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
