import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/core/models/news_model/article.dart';
import 'package:newsly/core/widgets/article_meta_row.dart';
import 'package:newsly/core/widgets/article_title_widget.dart';
import 'package:newsly/features/news_details/presentation/widgets/article_content_widget.dart';

class ArticleDetailsSliver extends StatelessWidget {
  const ArticleDetailsSliver({super.key, required this.article});

  final Article article;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        ArticleTitleWidget(
          title: article.title,
          horizontalPadding: 20,
          style: AppTextStyles.titleBoldBlack22,
          maxLines: 3,
        ),
        vGap(12),
        ArticleMetaRow(
          horizontalPadding: 20,
          source: article.sourceName,
          pubDate: article.pubDate,
        ),
        vGap(12),
        ArticleContentWidget(content: article.description),
      ]),
    );
  }
}
