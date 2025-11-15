import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/core/widgets/article_image_widget.dart';
import 'package:newsly/core/widgets/article_title_widget.dart';
import 'package:newsly/features/news_details/presentation/views/news_details_view.dart';

class SimilarArticleWidget extends StatelessWidget {
  const SimilarArticleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(NewsDetailsView.routeName);
      },
      child: Container(
        width: 220,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ArticleImageWidget(height: 120, width: 220),
            vGap(15),
            ArticleTitleWidget(
              horizontalPadding: 20,
              style: AppTextStyles.titleBoldBlack16,
            ),
          ],
        ),
      ),
    );
  }
}
