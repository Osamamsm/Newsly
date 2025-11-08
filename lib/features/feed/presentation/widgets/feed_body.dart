import 'package:flutter/material.dart';
import 'package:newsly/core/widgets/articles_tiles_list_view.dart';

class FeedBody extends StatelessWidget {
  const FeedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(children: [ArticleTilesListView()]),
    );
  }
}
