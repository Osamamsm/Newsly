import 'package:newsly/core/models/news_model/article.dart';

class GetCategoryNewsState {}

class GetCategoryNewsInitial extends GetCategoryNewsState {}

class GetCategoryNewsLoading extends GetCategoryNewsState {}

class GetCategoryNewsLoaded extends GetCategoryNewsState {
  final List<Article> articles;
  GetCategoryNewsLoaded(this.articles);
}

class GetCategoryNewsError extends GetCategoryNewsState {
  final String errMessage;
  GetCategoryNewsError(this.errMessage);
}
