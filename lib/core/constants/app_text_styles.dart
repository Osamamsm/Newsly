import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_colors.dart';

class AppTextStyles {
  static const TextStyle primaryMedium18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.kPrimaryColor,
  );

  static const TextStyle titleBoldBlack18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
    height: 1.2,
  );

  static const TextStyle titleBoldWhite18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
    height: 1.2,
  );

  static const TextStyle bodyMediumGrey14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.grey,
  );


 static const TextStyle bodyMediumBlack14 = TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: AppColors.black,
  );
}
