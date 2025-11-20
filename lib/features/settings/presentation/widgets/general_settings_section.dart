import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/features/settings/presentation/views/manage_interests_view.dart';
import 'package:newsly/features/settings/presentation/widgets/custom_switch.dart';
import 'package:newsly/features/settings/presentation/widgets/setting_tile_widget.dart';
import 'package:newsly/generated/l10n.dart';

class GeneralSettingsSection extends StatelessWidget {
  const GeneralSettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(S.of(context).general, style: AppTextStyles.bodyBoldPrimary16),
        vGap(10),
        SettingTileWidget(
          icon: Icons.notifications_none,
          title: S.of(context).notifications,
          trailingWidget: CustomSwitch(),
        ),
        vGap(10),
        SettingTileWidget(
          icon: Icons.category_outlined,
          title: S.of(context).manage_interests,
          onPressed: () {
            context.push(ManageInterestsView.routeName);
          },
        ),
      ],
    );
  }
}
