import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/core/widgets/article_tile_widget.dart';
import 'package:newsly/core/widgets/articles_list_view.dart';
import 'package:newsly/features/feed/presentation/view_model/for_you_news_cubit/for_you_news_cubit.dart';
import 'package:newsly/features/feed/presentation/view_model/for_you_news_cubit/for_you_news_state.dart';
import 'package:newsly/features/feed/presentation/view_model/latest_news_cubit/latest_news_cubit.dart';
import 'package:newsly/features/feed/presentation/view_model/latest_news_cubit/latest_news_state.dart';
import 'package:newsly/features/feed/presentation/widgets/custom_tab_bar.dart';
import 'package:newsly/features/feed/presentation/widgets/tab_change_listener.dart';

class FeedBody extends StatelessWidget {
  const FeedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTabBar(),
            TabChangeListener(),
            vGap(10),
            Expanded(
              child: TabBarView(
                children: [
                  BlocBuilder<ForYouNewsCubit, ForYouNewsState>(
                    builder: (BuildContext context, ForYouNewsState state) {
                      if (state is ForYouNewsLoaded) {
                        return ArticlesListView(
                          itemBuilder: (build) => ArticleTileWidget(),
                        );
                      } else {
                        return Text("dddddddd");
                      }
                    },
                  ),
                  BlocBuilder<LatestNewsCubit, LatestNewsState>(
                    builder: ( context, state) {
                      if (state is LatestNewsLoaded) {
                        return ArticlesListView(
                          itemBuilder: (build) => ArticleTileWidget(),
                        );
                      } else {
                        return Text("dddddddd");
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
