import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/core/widgets/article_image_widget.dart';
import 'package:newsly/core/widgets/article_meta_row.dart';
import 'package:newsly/core/widgets/article_title_widget.dart';
import 'package:newsly/features/bookmarks/presentation/widgets/article_description_widget.dart';

class BookMarkedArticleWidget extends StatelessWidget {
  const BookMarkedArticleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  title:
                      "Nearly 1 million bottles of prosecco recalled from Costco",
                  horizontalPadding: 10,
                  style: AppTextStyles.titleBoldBlack18,
                  maxLines: 2,
                ),
                vGap(4),
                ArticleDescriptionWidget(),
                vGap(8),
                ArticleMetaRow(horizontalPadding: 10, source: "filgoal",pubDate: "2025-11-18 05:48:51",),
              ],
            ),
          ),

          hGap(12),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: ArticleImageWidget(
              height: 100,
              width: 100,
              imageUrl:
                  "https://www.ahlynews.com/wp-content/uploads/2025/11/%D8%AD%D8%A7%D9%85%D8%AF-%D8%AD%D9%85%D8%AF%D8%A7%D9%86-%D9%84%D8%A7%D8%B9%D8%A8-%D9%88%D8%B3%D8%B7-%D8%A8%D8%AA%D8%B1%D9%88%D8%AC%D9%8A%D8%AA-1-150x150.jpg",
            ),
          ),
        ],
      ),
    );
  }
}
