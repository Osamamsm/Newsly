import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/core/helpers/functions.dart';
import 'package:newsly/generated/l10n.dart';

class ArticleMetaRow extends StatelessWidget {
  const ArticleMetaRow({
    super.key,
    required this.horizontalPadding,
    required this.source,
    required this.pubDate,
  });

  final double horizontalPadding;
  final String? source;
  final String? pubDate;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              source ?? S.of(context).unavailable,
              style: AppTextStyles.bodyMediumDarkGrey14,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            Functions.timeAgo(context, pubDate ?? ""),
            style: AppTextStyles.bodyMediumDarkGrey14,
          ),
        ],
      ),
    );
  }
}
