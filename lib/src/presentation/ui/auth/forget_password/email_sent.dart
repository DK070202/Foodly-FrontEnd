import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/src/presentation/theme/color_scheme/app_colors.dart';

import '../../../system_components/system_components.dart';
import '../../../utils/utils.dart';

class EmailSent extends StatelessWidget {
  const EmailSent({Key? key}) : super(key: key);

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
                'Reset email sent',
              ),
              5.height,
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'We have sent a instructions email to dhruvin.vainhs02@gmail.com. ',
                      style: AppTextStyle.body
                          .copyWith(color: AppColors.secondaryTextColor),
                    ),
                    TextSpan(
                      text: '\nHaving Problem ?',
                      style: AppTextStyle.body.copyWith(
                        color: AppColors.primaryColor,
                      ),
                      recognizer: TapRecognizer(() {}),
                    ),
                  ],
                ),
              ),
              34.height,
              AppButton(tittle: 'SEND AGAIN', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
