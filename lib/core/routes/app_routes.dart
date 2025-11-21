import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:newsly/core/constants/constants.dart';
import 'package:newsly/core/dependency_injection/di.dart';
import 'package:newsly/features/category_news/presentation/views/categorized_news_view.dart';
import 'package:newsly/features/home/presentation/view_model/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:newsly/features/home/presentation/views/home_view.dart';
import 'package:newsly/features/news_details/presentation/views/news_details_view.dart';
import 'package:newsly/features/on_boarding/data/repos/on_boarding_repo.dart';
import 'package:newsly/features/on_boarding/presentation/on_boarding_view.dart';
import 'package:newsly/features/on_boarding/presentation/view_model/cubit/on_boarding_cubit.dart';
import 'package:newsly/features/search/presentation/view_model/cubit/search_cubit.dart';
import 'package:newsly/features/search/presentation/views/search_view.dart';
import 'package:newsly/features/settings/presentation/views/manage_interests_view.dart';

final router = GoRouter(
  initialLocation: HomeView.routeName,

  redirect: (context, state) {
    final onBoardingRepo = getIt<OnBoardingRepo>();
    final hasSeenOnBoarding = onBoardingRepo.hasSeenOnBoarding();

    if (!hasSeenOnBoarding && state.name != OnBoardingView.routeName) {
      return OnBoardingView.routeName;
    } else if (hasSeenOnBoarding && state.name == OnBoardingView.routeName) {
      return HomeView.routeName;
    }
    return null;
  },
  routes: [
    GoRoute(
      path: HomeView.routeName,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<NavBarCubit>(),
        child: HomeView(),
      ),
    ),
    GoRoute(
      path: OnBoardingView.routeName,
      builder: (context, state) => BlocProvider(
        create: (context) =>
            getIt<OnBoardingCubit>(param1: Constants.onBoardingPages.length),
        child: OnBoardingView(),
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
    GoRoute(
      path: SearchView.routeName,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<SearchCubit>(),
        child: const SearchView(),
      ),
    ),
    GoRoute(
      path: ManageInterestsView.routeName,
      builder: (context, state) => const ManageInterestsView(),
    ),
  ],
);
