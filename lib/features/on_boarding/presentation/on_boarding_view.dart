import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/core/constants/constants.dart';
import 'package:newsly/features/on_boarding/presentation/widgets/first_page.dart';
import 'package:newsly/features/settings/presentation/widgets/custom_button.dart';
import 'package:newsly/generated/l10n.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({super.key});
  static String routeName = '/on-boarding-view';
  final List<Widget> pages = Constants.onBoardingPages;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: FirstPage(),
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            CustomButton(text: S.of(context).skip, onTap: () {}, width: 100),
            CustomButton(text: S.of(context).next, onTap: () {}, width: 100),
          ],
        ),
      ),
    );
  }
}
