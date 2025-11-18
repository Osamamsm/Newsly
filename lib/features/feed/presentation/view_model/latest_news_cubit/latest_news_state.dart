import 'package:newsly/core/models/news_model/article.dart';

class LatestNewsState {}

class LatestNewsInitial extends LatestNewsState {}

class LatestNewsLoading extends LatestNewsState {}

class LatestNewsLoaded extends LatestNewsState {
  final List<Article> articles;

  LatestNewsLoaded(this.articles);
}

class LatestNewsFailure extends LatestNewsState {
  final String errMessage;

  LatestNewsFailure(this.errMessage);
}
