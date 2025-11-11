import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/features/home/presentation/widgets/custom_bottom_navigation_bar.dart';
import 'package:newsly/features/home/presentation/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String routeName = '/home-view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Newsly', style: TextStyle(color: AppColors.white)),
        backgroundColor: AppColors.kPrimaryColor,
      ),
      backgroundColor: AppColors.greyLight,
      body: const HomeViewBody(),
      bottomNavigationBar: CustomButtonNavigationBar(),
    );
  }
}
