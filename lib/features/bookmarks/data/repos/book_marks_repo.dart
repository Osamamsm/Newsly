import 'package:newsly/core/models/news_model/article.dart';

abstract class BookMarksRepo {
  Future<void> addBookMark(Article article);
  Future<void> removeBookMark(String id);
  Future<List<Article>> getBookMarks();
  Future<bool> isBookMarked(String id);
}
