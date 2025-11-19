import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/generated/l10n.dart';

class ArticleContentWidget extends StatelessWidget {
  const ArticleContentWidget({super.key, required this.content});

  final String? content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        content ?? S.of(context).no_content_available,
        style: AppTextStyles.bodyRegularBlack14,
      ),
    );
  }
}
