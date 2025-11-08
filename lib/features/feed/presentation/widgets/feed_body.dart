import 'package:flutter/material.dart';
import 'package:newsly/core/widgets/article_tile_widget.dart';

class FeedBody extends StatelessWidget {
  const FeedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(children: [ArticleTileWidget()]),
    );
  }
}
