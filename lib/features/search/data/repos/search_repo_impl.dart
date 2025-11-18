import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:newsly/core/models/news_model/article.dart';
import 'package:newsly/core/networking/api_constants.dart';
import 'package:newsly/core/networking/api_error_handler.dart';
import 'package:newsly/core/networking/api_error_model.dart';
import 'package:newsly/core/networking/api_service.dart';
import 'package:newsly/features/search/data/repos/search_repo.dart';

@LazySingleton(as: SearchRepo)
class SearchRepoImpl implements SearchRepo {
  final ApiService _apiService;

  SearchRepoImpl(this._apiService);
  @override
  Future<Either<ApiErrorModel, List<Article>>> getSearchResults({
    required String query,
  }) async {
    try {
      var response = await _apiService.get(
        endpoint: ApiConstants.latest,
        queries: {"q": query},
      );

      List<Article> articles = [];

      for (var article in response['results']) {
        articles.add(Article.fromJson(article));
      }

      return right(articles);
    } catch (e) {
      return left(ApiErrorHandler.handle(e));
    }
  }
}
