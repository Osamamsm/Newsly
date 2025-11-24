import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/core/models/news_model/article.dart';
import 'package:newsly/features/bookmarks/presentation/view_model/cubit/book_marks_cubit.dart';
import 'package:newsly/features/bookmarks/presentation/view_model/cubit/book_marks_state.dart';

class BookMarkButton extends StatelessWidget {
  final Article article;

  const BookMarkButton({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<BookMarksCubit, BookMarksState, bool>(
      selector: (state) {
        if (state is BookMarksLoaded) {
          return state.articles.any(
            (a) => a.articleId == article.articleId,
          );
        }
        return false;
      },
      builder: (context, isBookmarked) {
        return IconButton(
          icon: Icon(
            isBookmarked ? Icons.bookmark : Icons.bookmark_border,
            color: AppColors.kPrimaryLightColor ,
          ),
          onPressed: () {
            context.read<BookMarksCubit>().toggleBookMark(article);
          },
        );
      },
    );
  }
}
