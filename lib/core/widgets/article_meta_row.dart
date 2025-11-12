import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/core/helpers/spacing.dart';

class ArticleMetaRow extends StatelessWidget {
  const ArticleMetaRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("filgoal", style: AppTextStyles.bodyMediumGrey14),
          hGap(10),
          Text("\u2022  2 hours ago", style: AppTextStyles.bodyMediumGrey14),
        ],
      ),
    );
  }
}
