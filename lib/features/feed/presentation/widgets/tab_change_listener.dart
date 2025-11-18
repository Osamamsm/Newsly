import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsly/features/feed/presentation/view_model/for_you_news_cubit/for_you_news_cubit.dart';
import 'package:newsly/features/feed/presentation/view_model/latest_news_cubit/latest_news_cubit.dart';

class TabChangeListener extends StatelessWidget {
  const TabChangeListener({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final tabController = DefaultTabController.of(context);

        tabController.addListener(() {
          if (tabController.indexIsChanging) return;

          if (tabController.index == 0) {
            context.read<ForYouNewsCubit>().getForYouNews(["science", "politics"]);
          } else if (tabController.index == 1) {
            context.read<LatestNewsCubit>().getLatestNews();
          }
        });

        return const SizedBox.shrink();
      },
    );
  }
}