import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/core/models/news_model/article.dart';
import 'package:newsly/core/widgets/article_image_widget.dart';
import 'package:newsly/core/widgets/article_meta_row.dart';
import 'package:newsly/core/widgets/article_title_widget.dart';
import 'package:newsly/features/bookmarks/presentation/widgets/article_description_widget.dart';
import 'package:newsly/features/news_details/presentation/views/news_details_view.dart';

class BookMarkedArticleWidget extends StatelessWidget {
  const BookMarkedArticleWidget({super.key, required this.article});

  final Article article;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(NewsDetailsView.routeName, extra: article);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ],
        ),
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ArticleTitleWidget(
                    title: article.title,
                    horizontalPadding: 10,
                    style: AppTextStyles.titleBoldBlack18,
                    maxLines: 2,
                  ),
                  vGap(4),
                  ArticleDescriptionWidget(description: article.description),
                  vGap(8),
                  ArticleMetaRow(
                    horizontalPadding: 10,
                    source: article.sourceName,
                    pubDate: article.pubDate,
                  ),
                ],
              ),
            ),

            hGap(12),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: ArticleImageWidget(
                height: 100,
                width: 100,
                imageUrl: article.imageUrl,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
