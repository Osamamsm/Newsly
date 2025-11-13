import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:newsly/core/constants/app_colors.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdvancedSwitch(
      activeColor: AppColors.kPrimaryColor,
      inactiveColor: AppColors.kPrimaryLightColor,
      width: 50,
      height: 30,
      thumb: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      onChanged: (value) {
      },
    );
  }
}