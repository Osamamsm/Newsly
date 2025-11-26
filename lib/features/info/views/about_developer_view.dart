import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/features/info/widgets/about_developer_view_body.dart';
import 'package:newsly/generated/l10n.dart';

class AboutDeveloperView extends StatelessWidget {
  const AboutDeveloperView({super.key});

  static String routeName = '/about-dev-view';
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      backgroundColor: AppColors.kPrimaryLightColor,
      appBar: AppBar(title: Text(s.aboutDeveloper)),
      body: AboutDeveloperViewBody(),
    );
  }
}
