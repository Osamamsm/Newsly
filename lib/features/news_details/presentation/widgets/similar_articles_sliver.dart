import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/features/news_details/presentation/view_model/similar_news_cubit/similar_news_cubit.dart';
import 'package:newsly/features/news_details/presentation/view_model/similar_news_cubit/similar_news_state.dart';
import 'package:newsly/features/news_details/presentation/widgets/similar_article_widget.dart';
import 'package:newsly/generated/l10n.dart';

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
              S.of(context).similar_articles,
              style: AppTextStyles.titleBoldPrimary20,
            ),
          ),
          vGap(12),
          SizedBox(
            height: 200,
            child: BlocBuilder<SimilarNewsCubit, SimilarNewsState>(
              builder: (context, state) {
                if (state is SimilarNewsLoaded) {
                  if (state.articles.isNotEmpty) {
                    return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemCount: state.articles.length,
                      itemBuilder: (context, index) =>
                          SimilarArticleWidget(article: state.articles[index]),
                      separatorBuilder: (context, index) => hGap(15),
                    );
                  } else {
                    return Center(
                      child: Text(
                        S.of(context).no_similar_articles,
                        style: AppTextStyles.primaryMedium18,
                      ),
                    );
                  }
                } else {
                  return SizedBox();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
