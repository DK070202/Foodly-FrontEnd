import 'package:flutter/material.dart';
import 'package:foodly/src/presentation/theme/color_scheme/app_colors.dart';
import 'package:foodly/src/presentation/utils/app_text_style.dart';

enum Weight {
  light,
  regular,
  medium,
  semiBold,
  bold,
  extrabold,
}

class AppText extends StatelessWidget {
  /// Provides [FontWeight].Default value is [Weight.regular].
  ///
  FontWeight getWeight({
    Weight? weight = Weight.regular,
  }) {
    switch (weight) {
      case Weight.light:
        return FontWeight.w300;
      case Weight.regular:
        return FontWeight.w400;
      case Weight.medium:
        return FontWeight.w500;
      case Weight.semiBold:
        return FontWeight.w600;
      case Weight.bold:
        return FontWeight.w700;
      case Weight.extrabold:
        return FontWeight.w800;
      default:
        return FontWeight.w400;
    }
  }

  const AppText(
    this.data, {
    Key? key,
    this.style,
    this.textAlign,
    this.height,
    this.fontSize = 14,
    this.color = AppColors.blackColor,
    this.fontWeight,
  }) : super(key: key);
  final String data;
  final TextStyle? style;
  final Color? color;
  final Weight? fontWeight;
  final double? fontSize;
  final TextAlign? textAlign;
  final double? height;

  AppText.h1Dark(
    this.data, {
    this.height,
    this.textAlign,
    Key? key,
    this.fontSize,
    this.color = AppColors.blackColor,
    this.fontWeight = Weight.medium,
  })  : style = AppTextStyle.h1,
        super(key: key);

  AppText.h1Light(
    this.data, {
    this.height,
    this.textAlign,
    Key? key,
    this.fontSize,
    this.color = AppColors.blackColor,
    this.fontWeight = Weight.medium,
  })  : style = AppTextStyle.h1,
        super(key: key);

  AppText.h2Dark(
    this.data, {
    this.height,
    this.textAlign,
    Key? key,
    this.fontSize,
    this.color = AppColors.blackColor,
    this.fontWeight = Weight.semiBold,
  })  : style = AppTextStyle.h2,
        super(key: key);

  AppText.h2Light(
    this.data, {
    this.height,
    this.textAlign,
    Key? key,
    this.fontSize,
    this.color = AppColors.blackColor,
    this.fontWeight = Weight.semiBold,
  })  : style = AppTextStyle.h2,
        super(key: key);

  AppText.h3Dark(
    this.data, {
    this.height,
    this.textAlign,
    Key? key,
    this.fontSize,
    this.color = AppColors.blackColor,
    this.fontWeight = Weight.semiBold,
  })  : style = AppTextStyle.h3,
        super(key: key);

  AppText.h3Light(
    this.data, {
    this.height,
    this.textAlign,
    Key? key,
    this.fontSize,
    this.color = AppColors.blackColor,
    this.fontWeight = Weight.semiBold,
  })  : style = AppTextStyle.h3,
        super(key: key);

  AppText.headlineDark(
    this.data, {
    this.height,
    this.textAlign,
    Key? key,
    this.fontSize,
    this.color = AppColors.blackColor,
    this.fontWeight = Weight.bold,
  })  : style = AppTextStyle.headline,
        super(key: key);

  AppText.headlineLight(
    this.data, {
    this.height,
    this.textAlign,
    Key? key,
    this.fontSize,
    this.color = AppColors.blackColor,
    this.fontWeight = Weight.bold,
  })  : style = AppTextStyle.headline,
        super(key: key);

  AppText.subHeadLight(
    this.data, {
    this.height,
    this.textAlign,
    Key? key,
    this.fontSize,
    this.color = AppColors.blackColor,
    this.fontWeight = Weight.medium,
  })  : style = AppTextStyle.subHead,
        super(key: key);

  AppText.subHeadDark(
    this.data, {
    this.height,
    this.textAlign,
    Key? key,
    this.fontSize,
    this.color = AppColors.blackColor,
    this.fontWeight = Weight.medium,
  })  : style = AppTextStyle.subHead,
        super(key: key);

  AppText.bodyLight(
    this.data, {
    this.height,
    this.textAlign,
    Key? key,
    this.fontSize,
    this.color = AppColors.blackColor,
    this.fontWeight = Weight.regular,
  })  : style = AppTextStyle.body,
        super(key: key);

  AppText.bodyDark(
    this.data, {
    this.height,
    this.textAlign,
    Key? key,
    this.fontSize,
    this.color = AppColors.blackColor,
    this.fontWeight = Weight.regular,
  })  : style = AppTextStyle.body,
        super(key: key);

  AppText.captionLight(
    this.data, {
    this.height,
    this.textAlign,
    Key? key,
    this.fontSize,
    this.color = AppColors.blackColor,
    this.fontWeight = Weight.medium,
  })  : style = AppTextStyle.caption,
        super(key: key);

  AppText.captionDark(
    this.data, {
    this.height,
    this.textAlign,
    Key? key,
    this.fontSize,
    this.color = AppColors.blackColor,
    this.fontWeight = Weight.medium,
  })  : style = AppTextStyle.caption,
        super(key: key);

  AppText.buttonLight(
    this.data, {
    this.height,
    this.textAlign,
    Key? key,
    this.fontSize,
    this.color = Colors.white,
    this.fontWeight = Weight.bold,
  })  : style = AppTextStyle.button,
        super(key: key);

  AppText.buttonDark(
    this.data, {
    this.height,
    this.textAlign,
    Key? key,
    this.fontSize,
    this.color = Colors.white,
    this.fontWeight = Weight.bold,
  })  : style = AppTextStyle.button,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: textAlign,
      style: style?.copyWith(
        height: height,
        color: color,
        fontWeight: getWeight(
          weight: fontWeight,
        ),
      ),
    );
  }
}
