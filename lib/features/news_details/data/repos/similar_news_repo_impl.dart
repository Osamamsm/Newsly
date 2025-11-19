import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:newsly/core/models/news_model/article.dart';
import 'package:newsly/core/networking/api_constants.dart';
import 'package:newsly/core/networking/api_error_handler.dart';
import 'package:newsly/core/networking/api_error_model.dart';
import 'package:newsly/core/networking/api_service.dart';
import 'package:newsly/features/news_details/data/repos/similar_news_repo.dart';


@LazySingleton(as: SimilarNewsRepo)
class SimilarNewsRepoImpl implements SimilarNewsRepo {
  final ApiService _apiService;

  SimilarNewsRepoImpl(this._apiService);
  @override
  Future<Either<ApiErrorModel, List<Article>>> getSimilarNews({
    required List<String> keyWords,
  }) async {
    try {
      var response = await _apiService.get(
        endpoint: ApiConstants.latest,
        queries: {'q': keyWords.join(',')},
      );

      List<Article> articles = [];

      for (var article in response['results']) {
        articles.add(Article.fromJson(article));
      }

      return Right(articles);
    } catch (e) {
      return Left(ApiErrorHandler.handle(e));
    }
  }
}
