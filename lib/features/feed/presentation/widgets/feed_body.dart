import 'package:flutter/material.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/features/feed/presentation/widgets/custom_tab_bar.dart';
import 'package:newsly/features/feed/presentation/widgets/for_you_tab_bar_view.dart';
import 'package:newsly/features/feed/presentation/widgets/latest_tab_bar_view.dart';

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
                children: [ForYouTabBarView(), LatestTabBarView()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
