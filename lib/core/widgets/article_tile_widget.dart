import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/core/widgets/article_image_widget.dart';
import 'package:newsly/core/widgets/article_meta_row.dart';
import 'package:newsly/core/widgets/article_title_widget.dart';

class ArticleTileWidget extends StatelessWidget {
  const ArticleTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ArticleImageWidget(),
          vGap(15),
          ArticleTitleWidget(),
          vGap(15),
          ArticleMetaRow(),
          vGap(15),
        ],
      ),
    );
  }
}
