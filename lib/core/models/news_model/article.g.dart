// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
  articleId: json['article_id'] as String?,
  link: json['link'] as String?,
  title: json['title'] as String?,
  description: json['description'] as String?,
  content: json['content'] as String?,
  keywords: (json['keywords'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  creator: (json['creator'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  language: json['language'] as String?,
  country: (json['country'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  category: (json['category'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  pubDate: json['pubDate'] as String?,
  pubDateTz: json['pubDateTZ'] as String?,
  imageUrl: json['image_url'] as String?,
  videoUrl: json['video_url'],
  sourceId: json['source_id'] as String?,
  sourceName: json['source_name'] as String?,
  sourcePriority: (json['source_priority'] as num?)?.toInt(),
  sourceUrl: json['source_url'] as String?,
  sourceIcon: json['source_icon'] as String?,
  sentiment: json['sentiment'] as String?,
  sentimentStats: json['sentiment_stats'] as String?,
  aiTag: json['ai_tag'] as String?,
  aiRegion: json['ai_region'] as String?,
  aiOrg: json['ai_org'] as String?,
  aiSummary: json['ai_summary'] as String?,
  duplicate: json['duplicate'] as bool?,
);

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
  'article_id': instance.articleId,
  'link': instance.link,
  'title': instance.title,
  'description': instance.description,
  'content': instance.content,
  'keywords': instance.keywords,
  'creator': instance.creator,
  'language': instance.language,
  'country': instance.country,
  'category': instance.category,
  'pubDate': instance.pubDate,
  'pubDateTZ': instance.pubDateTz,
  'image_url': instance.imageUrl,
  'video_url': instance.videoUrl,
  'source_id': instance.sourceId,
  'source_name': instance.sourceName,
  'source_priority': instance.sourcePriority,
  'source_url': instance.sourceUrl,
  'source_icon': instance.sourceIcon,
  'sentiment': instance.sentiment,
  'sentiment_stats': instance.sentimentStats,
  'ai_tag': instance.aiTag,
  'ai_region': instance.aiRegion,
  'ai_org': instance.aiOrg,
  'ai_summary': instance.aiSummary,
  'duplicate': instance.duplicate,
};
