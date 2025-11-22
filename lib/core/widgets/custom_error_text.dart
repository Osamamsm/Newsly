import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_text_styles.dart';

class CustomErrorText extends StatelessWidget {
  const CustomErrorText({super.key, required this.errMessage});

  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return Text(
      errMessage,
      style: AppTextStyles.primaryMedium18,
      textAlign: TextAlign.center,
    );
  }
}