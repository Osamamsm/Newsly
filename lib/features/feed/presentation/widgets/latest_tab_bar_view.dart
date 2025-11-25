import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsly/core/widgets/article_tile_widget.dart';
import 'package:newsly/core/widgets/articles_list_view.dart';
import 'package:newsly/core/widgets/articles_skeletonizer.dart';
import 'package:newsly/core/widgets/error_body.dart';
import 'package:newsly/features/feed/presentation/view_model/latest_news_cubit/latest_news_cubit.dart';
import 'package:newsly/features/feed/presentation/view_model/latest_news_cubit/latest_news_state.dart';

class LatestTabBarView extends StatelessWidget {
  const LatestTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LatestNewsCubit, LatestNewsState>(
      builder: (context, state) {
        if (state is LatestNewsLoaded) {
          return ArticlesListView(
            onRefresh: () => context.read<LatestNewsCubit>().getLatestNews(),
            articles: state.articles,
            itemBuilder: (article) => ArticleTileWidget(article: article),
          );
        } else if (state is LatestNewsFailure) {
          return ErrorBody(
            errMessage: state.errMessage,
            onRetry: () {
              context.read<LatestNewsCubit>().getLatestNews();
            },
            goHomeEnabled: false,
          );
        } else {
          return ArticlesSkeletonizer(
            itemBuilder: (article) => ArticleTileWidget(article: article),
          );
        }
      },
    );
  }
}
