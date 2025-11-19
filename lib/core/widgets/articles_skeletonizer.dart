import 'package:flutter/material.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/core/models/news_model/article.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ArticlesSkeletonizer extends StatelessWidget {
  const ArticlesSkeletonizer({super.key, required this.itemBuilder});

  final Widget Function(Article article) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: 2,
        itemBuilder: (context, index) => itemBuilder(Article()),
        separatorBuilder: (context, index) => vGap(15),
      ),
    );
  }
}
