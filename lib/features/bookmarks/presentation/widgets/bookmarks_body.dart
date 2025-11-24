import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsly/core/widgets/articles_list_view.dart';
import 'package:newsly/core/widgets/articles_skeletonizer.dart';
import 'package:newsly/features/bookmarks/presentation/view_model/cubit/book_marks_cubit.dart';
import 'package:newsly/features/bookmarks/presentation/view_model/cubit/book_marks_state.dart';
import 'package:newsly/features/bookmarks/presentation/widgets/book_marked_article_widget.dart';
import 'package:newsly/features/bookmarks/presentation/widgets/empty_bookmarks_body.dart';

class BookmarksBody extends StatelessWidget {
  const BookmarksBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: BlocBuilder<BookMarksCubit, BookMarksState>(
        builder: (context, state) {
          if (state is BookMarksLoaded) {
            if (state.articles.isEmpty) {
              return EmptyBookmarksBody();
            } else {
              return ArticlesListView(
                onRefresh: () async {
                  context.read<BookMarksCubit>().loadBookMarks();
                },
                articles: state.articles,
                itemBuilder: (article) =>
                    BookMarkedArticleWidget(article: article),
              );
            }
          } else if (state is BookMarksLoading) {
            return ArticlesSkeletonizer(
              itemBuilder: (article) =>
                  BookMarkedArticleWidget(article: article),
            );
          } else {
            return Text('data');
          }
        },
      ),
    );
  }
}
