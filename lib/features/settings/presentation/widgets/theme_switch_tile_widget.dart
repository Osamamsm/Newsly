import 'package:flutter/material.dart';
import 'package:newsly/features/settings/presentation/widgets/custom_switch.dart';
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
      trailingWidget: CustomSwitch(),
    );
  }
}