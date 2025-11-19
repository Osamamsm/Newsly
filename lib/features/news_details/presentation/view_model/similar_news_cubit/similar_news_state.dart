import 'package:newsly/core/models/news_model/article.dart';

class SimilarNewsState {}

class SimilarNewsInitial extends SimilarNewsState {}

class SimilarNewsLoading extends SimilarNewsState {}

class SimilarNewsLoaded extends SimilarNewsState {
  final List<Article> articles;

  SimilarNewsLoaded(this.articles);
}

class SimilarNewsFailure extends SimilarNewsState {
  final String errMessage;

  SimilarNewsFailure(this.errMessage);
}
