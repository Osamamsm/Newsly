import 'package:newsly/core/models/news_model/article.dart';

class SearchState {}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchSucceeded extends SearchState {
  final List<Article> articles;

  SearchSucceeded(this.articles);
}

class SearchFailed extends SearchState {
  final String errMessage;

  SearchFailed(this.errMessage);
}
