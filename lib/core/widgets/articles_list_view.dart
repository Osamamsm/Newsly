import 'package:flutter/material.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/core/models/news_model/article.dart';

class ArticlesListView extends StatelessWidget {
  const ArticlesListView({super.key, required this.itemBuilder, required this.articles});


final Widget Function(Article article) itemBuilder;
  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: articles.length,
      itemBuilder: (context, index) => itemBuilder(articles[index]),
      separatorBuilder: (context, index) => vGap(15),
    );
  }
}
