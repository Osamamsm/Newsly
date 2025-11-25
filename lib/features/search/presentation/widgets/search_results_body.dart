import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/core/models/news_model/article.dart';
import 'package:newsly/core/widgets/article_tile_widget.dart';
import 'package:newsly/core/widgets/articles_list_view.dart';
import 'package:newsly/generated/l10n.dart';

class SearchResultsBody extends StatelessWidget {
  const SearchResultsBody({super.key, required this.articles});

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).search_results,
          style: AppTextStyles.titleBoldPrimary18,
        ),
        vGap(15),
        Expanded(
          child: ArticlesListView(
            onRefresh: () async {},
            articles: articles,
            itemBuilder: (article) => ArticleTileWidget(article: article),
          ),
        ),
      ],
    );
  }
}
