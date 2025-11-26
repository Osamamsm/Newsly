import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/features/info/widgets/about_app_view_body.dart';
import 'package:newsly/generated/l10n.dart';

class AboutAppView extends StatelessWidget {
  const AboutAppView({super.key});

  static String routeName = '/about-body-view';
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      backgroundColor: AppColors.kPrimaryLightColor,
      appBar: AppBar(title: Text(s.about_app)),
      body: AboutAppViewBody(),
    );
  }
}
