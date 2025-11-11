import 'package:flutter/material.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/core/widgets/articles_tiles_list_view.dart';
import 'package:newsly/features/feed/presentation/widgets/custom_tab_bar.dart';

class FeedBody extends StatelessWidget {
  const FeedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTabBar(),
            vGap(10),
            Expanded(
              child: TabBarView(
                children: [ArticleTilesListView(), ArticleTilesListView()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


