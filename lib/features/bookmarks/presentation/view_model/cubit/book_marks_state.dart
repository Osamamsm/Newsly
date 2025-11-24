import 'package:newsly/core/models/news_model/article.dart';

class BookMarksState {}

class BookMarksInitial extends BookMarksState {}

class BookMarksLoading extends BookMarksState {}

class BookMarksLoaded extends BookMarksState {
  final List<Article> articles;

  BookMarksLoaded(this.articles);
}
