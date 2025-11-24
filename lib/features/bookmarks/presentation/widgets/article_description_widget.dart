import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_text_styles.dart';

class ArticleDescriptionWidget extends StatelessWidget {
  const ArticleDescriptionWidget({super.key, required this.description});

  final String? description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        description ?? "",
        style: AppTextStyles.bodyMediumGrey14,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}