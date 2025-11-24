import 'package:injectable/injectable.dart';
import 'package:newsly/core/database/app_data_base.dart';
import 'package:newsly/core/models/news_model/article.dart';
import 'package:newsly/features/bookmarks/data/repos/book_marks_repo.dart';


@LazySingleton(as: BookMarksRepo)
class BookMarksRepoImpl implements BookMarksRepo {
  final AppDataBase _appDataBase;

  BookMarksRepoImpl(this._appDataBase);
  @override
  Future<void> addBookMark(Article article) async {
    await _appDataBase.insertBookMark(article.toBookmarkJson());
  }

  @override
  Future<List<Article>> getBookMarks() async {
    final bookMarks = await _appDataBase.getBookMarks();

    return bookMarks
        .map((bookMark) => Article.fromBookmarkJson(bookMark))
        .toList();
  }

  @override
  Future<bool> isBookMarked(String id) async {
    final bookMarks = await getBookMarks();
    for (int i = 0; i < bookMarks.length; i++) {
      final String currentId = bookMarks[i].articleId!;
      if (currentId == id) {
        return true;
      }
    }
    return false;
  }

  @override
  Future<void> removeBookMark(String id) async {
    await _appDataBase.deleteBookMark(id);
  }
}
