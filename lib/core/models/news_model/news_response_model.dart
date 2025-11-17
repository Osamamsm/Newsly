import 'package:json_annotation/json_annotation.dart';

import 'article.dart';

part 'news_response_model.g.dart';

@JsonSerializable()
class NewsResponseModel {
  String? status;
  @JsonKey(name: 'totalResults')
  int? totalResultsNumber;
  @JsonKey(name: 'results')
  List<Article>? articles;
  String? nextPage;

  NewsResponseModel({
    this.status,
    this.totalResultsNumber,
    this.articles,
    this.nextPage,
  });

  factory NewsResponseModel.fromJson(Map<String, dynamic> json) {
    return _$NewsResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NewsResponseModelToJson(this);
}
