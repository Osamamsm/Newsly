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
            ArticleImageWidget(
              height: 120,
              width: 220,
              imageUrl:
                  "https://www.ahlynews.com/wp-content/uploads/2025/11/%D8%AD%D8%A7%D9%85%D8%AF-%D8%AD%D9%85%D8%AF%D8%A7%D9%86-%D9%84%D8%A7%D8%B9%D8%A8-%D9%88%D8%B3%D8%B7-%D8%A8%D8%AA%D8%B1%D9%88%D8%AC%D9%8A%D8%AA-1-150x150.jpg",
            ),
            vGap(15),
            ArticleTitleWidget(
              title:
                  "Nearly 1 million bottles of prosecco recalled from Costco",
              horizontalPadding: 20,
              style: AppTextStyles.titleBoldBlack16,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
