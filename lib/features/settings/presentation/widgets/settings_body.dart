import 'package:flutter/material.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/features/settings/presentation/widgets/about_app_section.dart';
import 'package:newsly/features/settings/presentation/widgets/general_settings_section.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          vGap(10),
          GeneralSettingsSection(),
          vGap(10),
          AboutAppSection(),
        ],
      ),
    );
  }
}
