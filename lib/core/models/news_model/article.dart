import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

@JsonSerializable()
class Article {
  @JsonKey(name: 'article_id')
  String? articleId;
  String? link;
  String? title;
  String? description;
  String? content;
  List<String>? keywords;
  List<String>? creator;
  String? language;
  List<String>? country;
  List<String>? category;
  String? pubDate;
  @JsonKey(name: 'pubDateTZ')
  String? pubDateTz;
  @JsonKey(name: 'image_url')
  String? imageUrl;
  @JsonKey(name: 'video_url')
  dynamic videoUrl;
  @JsonKey(name: 'source_id')
  String? sourceId;
  @JsonKey(name: 'source_name')
  String? sourceName;
  @JsonKey(name: 'source_priority')
  int? sourcePriority;
  @JsonKey(name: 'source_url')
  String? sourceUrl;
  @JsonKey(name: 'source_icon')
  String? sourceIcon;
  String? sentiment;
  @JsonKey(name: 'sentiment_stats')
  String? sentimentStats;
  @JsonKey(name: 'ai_tag')
  String? aiTag;
  @JsonKey(name: 'ai_region')
  String? aiRegion;
  @JsonKey(name: 'ai_org')
  String? aiOrg;
  @JsonKey(name: 'ai_summary')
  String? aiSummary;
  bool? duplicate;

  Article({
    this.articleId,
    this.link,
    this.title,
    this.description,
    this.content,
    this.keywords,
    this.creator,
    this.language,
    this.country,
    this.category,
    this.pubDate,
    this.pubDateTz,
    this.imageUrl,
    this.videoUrl,
    this.sourceId,
    this.sourceName,
    this.sourcePriority,
    this.sourceUrl,
    this.sourceIcon,
    this.sentiment,
    this.sentimentStats,
    this.aiTag,
    this.aiRegion,
    this.aiOrg,
    this.aiSummary,
    this.duplicate,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return _$ArticleFromJson(json);
  }


  factory Article.fromBookmarkJson(Map<String, dynamic> json) {
    return Article(
      articleId: json['article_id'],
      title: json['title'],
      description: json['description'],
      imageUrl: json['image_url'],
      content: json['content'],
      link: json['link'],
      sourceName: json['source_name'],
      pubDate: json['pub_date'],
      keywords: (jsonDecode(json['key_words'] ?? []) as List<dynamic>)
          .map((e) => e.toString())
          .toList(),
    );
  }

  Map<String, dynamic> toBookmarkJson() {
    return {
      'article_id': articleId,
      'title': title,
      'description': description,
      'image_url': imageUrl,
      'content': content,
      'link': link,
      'source_name': sourceName,
      'pub_date': pubDate,
      'key_words': jsonEncode(keywords ?? []),
    };
  }
}
