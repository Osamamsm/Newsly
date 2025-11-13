import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/features/settings/presentation/widgets/setting_tile_widget.dart';
import 'package:newsly/generated/l10n.dart';

class ThemeSwitchTileWidget extends StatelessWidget {
  const ThemeSwitchTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SettingTileWidget(
      title: S.of(context).dark_mode,
      icon: Icons.dark_mode_outlined,
      trailingWidget: AdvancedSwitch(
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
      ),
    );
  }
}