import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/core/widgets/article_image_widget.dart';
import 'package:newsly/core/widgets/article_meta_row.dart';
import 'package:newsly/core/widgets/article_title_widget.dart';
import 'package:newsly/features/news_details/presentation/widgets/article_content_widget.dart';

class NewsDetailsViewBody extends StatelessWidget {
  const NewsDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          ArticleImageWidget(width: double.infinity, height: 360),
          vGap(12),
          ArticleTitleWidget(
            horizontalPadding: 20,
            style: AppTextStyles.titleBoldBlack22,
          ),
          vGap(12),
          ArticleMetaRow(horizontalPadding: 20),
          vGap(12),
          ArticleContentWidget(),
        ],
      ),
    );
  }
}
