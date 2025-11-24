import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsly/core/models/news_model/article.dart';
import 'package:newsly/features/bookmarks/data/repos/book_marks_repo.dart';
import 'package:newsly/features/bookmarks/presentation/view_model/cubit/book_marks_state.dart';

class BookMarksCubit extends Cubit<BookMarksState> {
  BookMarksCubit(this._repo) : super(BookMarksInitial());

  final BookMarksRepo _repo;

  Future<void> loadBookMarks() async {
    emit(BookMarksLoading());

    final articles = await _repo.getBookMarks();

    emit(BookMarksLoaded(articles));
  }

  Future<void> toggleBookMark(Article article) async {
    final isBookMarked = await _repo.isBookMarked(article.articleId!);

    if (isBookMarked == true) {
      _repo.removeBookMark(article.articleId!);
    } else {
      _repo.addBookMark(article);
    }

    final updatedBookMarksList = await _repo.getBookMarks();
    emit(BookMarksLoaded(updatedBookMarksList));
  }
}
