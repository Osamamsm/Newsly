import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/features/settings/presentation/widgets/setting_tile_widget.dart';
import 'package:newsly/generated/l10n.dart';

class AboutAppSection extends StatelessWidget {
  const AboutAppSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(S.of(context).about, style: AppTextStyles.bodyBoldPrimary16),
        vGap(10),
        SettingTileWidget(
          icon: Icons.info_outline,
          title: S.of(context).about_app,
          onPressed: () {},
        ),
        vGap(10),
        SettingTileWidget(
          icon: Icons.logo_dev_outlined,
          title: S.of(context).about_developer,
          onPressed: () {},
        ),
      ],
    );
  }
}
