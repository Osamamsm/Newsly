import 'package:flutter/material.dart';
import 'package:newsly/core/widgets/article_tile_widget.dart';
import 'package:newsly/core/widgets/articles_list_view.dart';

class CategorizedNewsViewBody extends StatelessWidget {
  const CategorizedNewsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: ArticlesListView(itemBuilder: (context) => ArticleTileWidget()),
    );
  }
}
