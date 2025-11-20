import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_colors.dart';

class CustomCategoryCheckBox extends StatelessWidget {
  final String label;
  final bool value;
  final Function(bool) onChanged;

  const CustomCategoryCheckBox({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      activeColor: AppColors.kPrimaryColor,
      checkColor: AppColors.kPrimaryLightColor,
      tileColor: AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      title: Text(label),
      value: value,
      onChanged: (newValue) {
        onChanged(newValue!);
      },
    );
  }
}
