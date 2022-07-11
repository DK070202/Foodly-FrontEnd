import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/src/presentation/utils/utils.dart';
import 'package:foodly/src/presentation/widgets/widgets.dart';

import '../theme/color_scheme/app_colors.dart';

enum ButtonType {
  facebook,
  google,
}

class SocialButton extends StatelessWidget {
  const SocialButton({
    Key? key,
    required this.type,
    required this.onPressed,
  }) : super(key: key);

  final ButtonType type;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44.h,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            type == ButtonType.facebook
                ? AppColors.darkBlue
                : AppColors.lightBlue,
          ),
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            SvgIcon(
              type == ButtonType.facebook
                  ? 'asset/icons/facebook.svg'
                  : 'asset/icons/google.svg',
            ),
            Expanded(
              child: Align(
                child: Text('Connect with ${type.name}'.toUpperCase(),
                    style: AppTextStyle.caption.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 1)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
