import 'package:flutter/material.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/core/widgets/article_tile_widget.dart';

class ArticleTilesListView extends StatelessWidget {
  const ArticleTilesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ArticleTileWidget();
        },
        separatorBuilder: (context, index) => vGap(15),
      ),
    );
  }
}
