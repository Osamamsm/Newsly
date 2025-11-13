import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/core/constants/app_text_styles.dart';

class SettingTileWidget extends StatelessWidget {
  const SettingTileWidget({
    super.key,
    required this.icon,
    this.trailingWidget,
    required this.title,
  });

  final String title;
  final IconData icon;
  final Widget? trailingWidget;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      tileColor: AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      leading: Container( 
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.kPrimaryLightColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, color: AppColors.kPrimaryColor, size: 25),
      ),
      title: Text(title, style: AppTextStyles.primaryMedium18),
      trailing:
          trailingWidget ??
          Icon(Icons.arrow_forward_ios_rounded, color: AppColors.kPrimaryColor),
    );
  }
}