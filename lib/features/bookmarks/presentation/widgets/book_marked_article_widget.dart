import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/core/widgets/article_image_widget.dart';
import 'package:newsly/core/widgets/article_meta_row.dart';
import 'package:newsly/core/widgets/article_title_widget.dart';
import 'package:newsly/features/bookmarks/presentation/widgets/article_description_widget.dart';

class BookMarkedArticleWidget extends StatelessWidget {
  const BookMarkedArticleWidget({
    super.key,
  });

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
                ArticleTitleWidget(horizontalPadding: 10, style: AppTextStyles.titleBoldBlack18,),
                vGap(4),
                ArticleDescriptionWidget(),
                vGap(8),
                ArticleMetaRow(horizontalPadding: 10),
              ],
            ),
          ),
    
          hGap(12),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: ArticleImageWidget(height: 100, width: 100),
          ),
        ],
      ),
    );
  }
}