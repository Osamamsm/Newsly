import 'package:dartz/dartz.dart';
import 'package:newsly/core/models/news_model/article.dart';
import 'package:newsly/core/networking/api_error_model.dart';

abstract class SimilarNewsRepo {
  Future<Either<ApiErrorModel, List<Article>>> getSimilarNews({
    required List<String> keyWords,
  });
}
