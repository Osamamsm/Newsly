import 'package:flutter/material.dart';
import 'package:newsly/core/models/news_model/article.dart';
import 'package:newsly/core/widgets/article_image_widget.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/features/news_details/presentation/widgets/article_details_sliver.dart';
import 'package:newsly/features/news_details/presentation/widgets/similar_articles_sliver.dart';

class NewsDetailsViewBody extends StatelessWidget {
  const NewsDetailsViewBody({super.key, required this.article});
  final Article article;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: ArticleImageWidget(
            width: double.infinity,
            height: 360,
            imageUrl: article.imageUrl,
          ),
        ),
        SliverToBoxAdapter(child: vGap(12)),
        ArticleDetailsSliver(article: article),
        SliverToBoxAdapter(child: vGap(16)),
        SimilarArticlesSliver(),
        SliverToBoxAdapter(child: vGap(16)),
      ],
    );
  }
}
