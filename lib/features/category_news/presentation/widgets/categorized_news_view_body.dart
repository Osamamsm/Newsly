import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsly/core/widgets/article_tile_widget.dart';
import 'package:newsly/core/widgets/articles_list_view.dart';
import 'package:newsly/core/widgets/articles_skeletonizer.dart';
import 'package:newsly/features/category_news/presentation/view_model/cubit/get_category_news_cubit.dart';
import 'package:newsly/features/category_news/presentation/view_model/cubit/get_category_news_state.dart';

class CategorizedNewsViewBody extends StatelessWidget {
  const CategorizedNewsViewBody({super.key, required this.category});

  final String category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: BlocBuilder<GetCategoryNewsCubit, GetCategoryNewsState>(
        builder: (context, state) {
          if (state is GetCategoryNewsLoaded) {
            return ArticlesListView(
              onRefresh: () => context
                  .read<GetCategoryNewsCubit>()
                  .getCategoryNews(category),
              articles: state.articles,
              itemBuilder: (article) => ArticleTileWidget(article: article),
            );
          } else if (state is GetCategoryNewsError) {
            return Center(child: Text(state.message));
          } else {
            return ArticlesSkeletonizer(
              itemBuilder: (article) => ArticleTileWidget(article: article),
            );
          }
        },
      ),
    );
  }
}
