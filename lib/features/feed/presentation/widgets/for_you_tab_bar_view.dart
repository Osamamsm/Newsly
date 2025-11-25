import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsly/core/widgets/article_tile_widget.dart';
import 'package:newsly/core/widgets/articles_list_view.dart';
import 'package:newsly/core/widgets/articles_skeletonizer.dart';
import 'package:newsly/core/widgets/error_body.dart';
import 'package:newsly/features/feed/presentation/view_model/for_you_news_cubit/for_you_news_cubit.dart';
import 'package:newsly/features/feed/presentation/view_model/for_you_news_cubit/for_you_news_state.dart';
import 'package:newsly/features/feed/presentation/widgets/for_you_empty_body.dart';
import 'package:newsly/features/settings/presentation/view_model/settings_cubit/settings_cubit.dart';
import 'package:newsly/features/settings/presentation/view_model/settings_cubit/settings_state.dart';

class ForYouTabBarView extends StatelessWidget {
  const ForYouTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsCubit, SettingsState>(
      listenWhen: (previous, current) =>
          previous.interests != current.interests,
      listener: (context, state) {
        if (state.interests.isNotEmpty) {
          context.read<ForYouNewsCubit>().getForYouNews(state.interests);
        }
      },
      child: Builder(
        builder: (context) {
          final settingsState = context.watch<SettingsCubit>().state;
          final interests = settingsState.interests;
          return BlocBuilder<ForYouNewsCubit, ForYouNewsState>(
            builder: (BuildContext context, ForYouNewsState state) {
              if (interests.isEmpty) {
                return ForYouEmptyBody();
              } else if (state is ForYouNewsInitial) {
                context.read<ForYouNewsCubit>().getForYouNews(interests);
                return ArticlesSkeletonizer(
                  itemBuilder: (article) => ArticleTileWidget(article: article),
                );
              } else if (state is ForYouNewsLoaded) {
                return ArticlesListView(
                  onRefresh: () =>
                      context.read<ForYouNewsCubit>().getForYouNews(interests),
                  articles: state.articles,
                  itemBuilder: (article) => ArticleTileWidget(article: article),
                );
              } else if (state is ForYouNewsFailure) {
                return ErrorBody(
                  errMessage: state.errMessage,
                  onRetry: () {
                    context.read<ForYouNewsCubit>().getForYouNews(interests);
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
        },
      ),
    );
  }
}
