import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/core/constants/constants.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({super.key});
  static String routeName = '/on-boarding-view';
  final List<Widget> pages = Constants.onBoardingPages;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kPrimaryColor,
    );
  }
}
