import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/features/settings/presentation/widgets/manage_interests_view_body.dart';

class ManageInterestsView extends StatelessWidget {
  const ManageInterestsView({super.key});

  static String routeName = '/manage-interests-view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.kPrimaryColor),
      body: ManageInterestsViewBody(),
      backgroundColor: AppColors.kPrimaryLightColor,
    );
  }
}
