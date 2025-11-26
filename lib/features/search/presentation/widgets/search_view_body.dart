import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsly/core/widgets/article_tile_widget.dart';
import 'package:newsly/core/widgets/articles_skeletonizer.dart';
import 'package:newsly/core/widgets/error_body.dart';
import 'package:newsly/features/search/presentation/view_model/cubit/search_cubit.dart';
import 'package:newsly/features/search/presentation/view_model/cubit/search_state.dart';
import 'package:newsly/features/search/presentation/widgets/empty_search_body.dart';
import 'package:newsly/features/search/presentation/widgets/search_results_body.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          if (state is SearchSucceeded) {
            return SearchResultsBody(articles: state.articles);
          } else if (state is SearchFailed) {
            return ErrorBody(
              errMessage: state.errMessage,
              onRetry: () {
                final cubit = context.read<SearchCubit>();
                cubit.onQueryChanged(cubit.lastQuery);
              },
              goHomeEnabled: true,
            );
          } else if (state is SearchLoading) {
            return ArticlesSkeletonizer(
              itemBuilder: (article) => ArticleTileWidget(article: article),
            );
          } else {
            return EmptySearchBody();
          }
        },
      ),
    );
  }
}
