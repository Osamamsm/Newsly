import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:newsly/core/models/news_model/article.dart';
import 'package:newsly/core/networking/api_constants.dart';
import 'package:newsly/core/networking/api_error_handler.dart';
import 'package:newsly/core/networking/api_error_model.dart';
import 'package:newsly/core/networking/api_service.dart';
import 'package:newsly/features/feed/data/repos/feed_repo.dart';


@LazySingleton(as: FeedRepo)
class FeedRepoImpl implements FeedRepo {
  final ApiService _apiService;

  FeedRepoImpl(this._apiService);

  @override
  Future<Either<ApiErrorModel, List<Article>>> getForYouNews({
    required List<String> categories,
  }) async {
    try {
      var response = await _apiService.get(
        endpoint: ApiConstants.latest,
        queries: {'category': categories.join(',')},
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

  @override
  Future<Either<ApiErrorModel, List<Article>>> getLatestNews() async {
    try {
      var response = await _apiService.get(endpoint: ApiConstants.latest);

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
