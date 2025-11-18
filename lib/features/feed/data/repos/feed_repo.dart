import 'package:dartz/dartz.dart';
import 'package:newsly/core/models/news_model/article.dart';
import 'package:newsly/core/networking/api_error_model.dart';

abstract class FeedRepo {
  Future<Either<ApiErrorModel, List<Article>>> getForYouNews({required List<String>categories});

  Future<Either<ApiErrorModel, List<Article>>> getLatestNews();
}
