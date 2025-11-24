import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/features/feed/presentation/widgets/tab_bar_item.dart';
import 'package:newsly/generated/l10n.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: TabBar(
        labelPadding: EdgeInsets.zero,
        unselectedLabelColor: AppColors.grey,
        labelStyle: AppTextStyles.bodyBoldPrimary16,
        indicatorWeight: 3,
        indicatorColor: AppColors.kPrimaryColor,
        tabs: [
          TabBarItem(text: S.of(context).for_you),
          TabBarItem(text: S.of(context).latest),
        ],
      ),
    );
  }
}
