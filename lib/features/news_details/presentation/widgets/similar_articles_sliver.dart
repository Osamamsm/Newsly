import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/features/news_details/presentation/widgets/similar_article_widget.dart';

class SimilarArticlesSliver extends StatelessWidget {
  const SimilarArticlesSliver({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Similar Articles',
              style: AppTextStyles.titleBoldBlack20,
            ),
          ),
          vGap(12),
          SizedBox(
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: 10,
              itemBuilder: (context, index) => const SimilarArticleWidget(),
              separatorBuilder: (context, index) => hGap(15),
            ),
          ),
        ],
      ),
    );
  }
}
