import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_text_styles.dart';

class ArticleTitleWidget extends StatelessWidget {
  const ArticleTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        "Nearly 1 million bottles of prosecco recalled from Costco",
        textAlign: TextAlign.start,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,

        style: AppTextStyles.titleBoldBlack18,
      ),
    );
  }
}
