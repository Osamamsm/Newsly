import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/core/models/news_model/article.dart';
import 'package:newsly/core/widgets/article_image_widget.dart';
import 'package:newsly/core/widgets/article_meta_row.dart';
import 'package:newsly/core/widgets/article_title_widget.dart';
import 'package:newsly/features/news_details/presentation/views/news_details_view.dart';

class ArticleTileWidget extends StatelessWidget {
  const ArticleTileWidget({super.key, required this.article});

  final Article article;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(NewsDetailsView.routeName, extra: article);
      },
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ArticleImageWidget(
              height: 220,
              width: double.infinity,
              imageUrl: article.imageUrl,
            ),
            vGap(15),
            ArticleTitleWidget(
              title: article.title,
              horizontalPadding: 20,
              style: AppTextStyles.titleBoldBlack18,
              maxLines: 2,
            ),
            vGap(15),
            ArticleMetaRow(
              horizontalPadding: 20,
              source: article.sourceName,
              pubDate: article.pubDate,
            ),
            vGap(15),
          ],
        ),
      ),
    );
  }
}
