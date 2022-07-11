import 'package:flutter/material.dart';
import 'package:foodly/src/presentation/utils/app_text.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.tittle,
    required this.onPressed,
  }) : super(key: key);

  final String tittle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: AppText.buttonDark(
        tittle,
        height: 1,
      ),
    );
  }
}
