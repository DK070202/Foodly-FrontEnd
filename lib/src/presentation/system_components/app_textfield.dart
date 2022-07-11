import 'package:flutter/material.dart';
import 'package:foodly/src/presentation/theme/color_scheme/app_colors.dart';
import 'package:foodly/src/presentation/utils/app_text_style.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    this.controller,
    this.hintText,
    this.trailingIcon,
  }) : super(key: key);
  final TextEditingController? controller;
  final String? hintText;
  final Widget? trailingIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          fillColor: AppColors.filledColor,
          filled: true,
          suffixIcon: trailingIcon),
      style: AppTextStyle.body,
    );
  }
}
