import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_text_styles.dart';

class ArticleDescriptionWidget extends StatelessWidget {
  const ArticleDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        "This is a brief description or snippet of the news article to give readers an idea of the content.",
        style: AppTextStyles.bodyMediumGrey14,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}