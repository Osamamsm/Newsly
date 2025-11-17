import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:newsly/core/dependency_injection/di.dart';
import 'package:newsly/features/category_news/presentation/views/categorized_news_view.dart';
import 'package:newsly/features/home/presentation/view_model/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:newsly/features/home/presentation/views/home_view.dart';
import 'package:newsly/features/news_details/presentation/views/news_details_view.dart';

final router = GoRouter(
  initialLocation: HomeView.routeName,
  routes: [
    GoRoute(
      path: HomeView.routeName,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<NavBarCubit>(),
        child: HomeView(),
      ),
    ),
    GoRoute(
      path: NewsDetailsView.routeName,
      builder: (context, state) => const NewsDetailsView(),
    ),
    GoRoute(
      path: CategorizedNewsView.routeName,
      builder: (context, state) => const CategorizedNewsView(),
    ),
  ],
);
