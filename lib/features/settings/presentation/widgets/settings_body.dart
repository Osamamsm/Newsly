import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/features/settings/presentation/widgets/theme_switch_tile_widget.dart';
import 'package:newsly/generated/l10n.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).appearance,
            style: AppTextStyles.bodyBoldPrimary16,
          ),
          vGap(10),
          ThemeSwitchTileWidget(),
        ],
      ),
    );
  }
}
