import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/core/helpers/spacing.dart';

class ArticleMetaRow extends StatelessWidget {
  const ArticleMetaRow({super.key, required this.horizontalPadding});

  final double horizontalPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("filgoal", style: AppTextStyles.bodyMediumDarkGrey14),
          hGap(10),
          Text(
            "\u2022  2 hours ago",
            style: AppTextStyles.bodyMediumDarkGrey14,
          ),
        ],
      ),
    );
  }
}
