import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsly/core/widgets/article_tile_widget.dart';
import 'package:newsly/core/widgets/articles_list_view.dart';
import 'package:newsly/core/widgets/articles_skeletonizer.dart';
import 'package:newsly/features/feed/presentation/view_model/for_you_news_cubit/for_you_news_cubit.dart';
import 'package:newsly/features/feed/presentation/view_model/for_you_news_cubit/for_you_news_state.dart';

class ForYouTabBarView extends StatelessWidget {
  const ForYouTabBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForYouNewsCubit, ForYouNewsState>(
      builder: (BuildContext context, ForYouNewsState state) {
        if (state is ForYouNewsLoaded) {
          return ArticlesListView(
            articles: state.articles,
            itemBuilder: (article) =>
                ArticleTileWidget(article: article),
          );
        } else if (state is ForYouNewsLoading) {
          return ArticlesSkeletonizer(
            itemBuilder: (article) =>
                ArticleTileWidget(article: article),
          );
        } else {
          return Text("nothing yet");
        }
      },
    );
  }
}