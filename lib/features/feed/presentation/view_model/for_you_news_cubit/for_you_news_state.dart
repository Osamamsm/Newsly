import 'package:newsly/core/models/news_model/article.dart';

class ForYouNewsState {}

class ForYouNewsInitial extends ForYouNewsState {}

class ForYouNewsLoading extends ForYouNewsState {}

class ForYouNewsLoaded extends ForYouNewsState {
  final List<Article> articles;

  ForYouNewsLoaded(this.articles);
}

class ForYouNewsFailure extends ForYouNewsState {
  final String errMessage;

  ForYouNewsFailure(this.errMessage);
}
