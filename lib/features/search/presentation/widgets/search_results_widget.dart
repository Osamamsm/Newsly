import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsly/core/widgets/article_tile_widget.dart';
import 'package:newsly/core/widgets/articles_list_view.dart';
import 'package:newsly/core/widgets/articles_skeletonizer.dart';
import 'package:newsly/features/search/presentation/view_model/cubit/search_cubit.dart';
import 'package:newsly/features/search/presentation/view_model/cubit/search_state.dart';

class SearchResultsWidget extends StatelessWidget {
  const SearchResultsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSucceeded) {
          return Expanded(
            child: ArticlesListView(
              articles: state.articles,
              itemBuilder: (article) =>
                  ArticleTileWidget(article: article),
            ),
          );
        } else if (state is SearchFailed) {
          return Text(state.errMessage);
        } else if (state is SearchLoading) {
          return Expanded(
            child: ArticlesSkeletonizer(
              itemBuilder: (article) => ArticleTileWidget(article: article),
            ),
          );
        } else {
          return Center(child: Text("No Search done yet"));
        }
      },
    );
  }
}