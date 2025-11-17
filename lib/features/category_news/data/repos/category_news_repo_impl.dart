import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:newsly/core/models/news_model/article.dart';
import 'package:newsly/core/networking/api_constants.dart';
import 'package:newsly/core/networking/api_error.dart';
import 'package:newsly/core/networking/api_error_model.dart';
import 'package:newsly/core/networking/api_service.dart';
import 'package:newsly/features/category_news/data/repos/category_news_repo.dart';


@LazySingleton()
class CategoryNewsRepoImpl implements CategoryNewsRepo {
  final ApiService _apiService;

  CategoryNewsRepoImpl(this._apiService);
  @override
  Future<Either<ApiErrorModel, List<Article>>> getCategoryNews({
    required String category,
  }) async {
    try {
      var response = await _apiService.get(
        endpoint: ApiConstants.latest,
        queries: {'category': category},
      );

      List<Article> articles = [];

      for (var article in response['results']) {
        articles.add(Article.fromJson(article));
      }

      return Right(articles);
    } catch (e) {
      return Left(ApiError.handle(e));
    }
  }
}
