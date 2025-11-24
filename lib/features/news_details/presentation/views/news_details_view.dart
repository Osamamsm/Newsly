import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/core/dependency_injection/di.dart';
import 'package:newsly/core/models/news_model/article.dart';
import 'package:newsly/features/news_details/presentation/view_model/similar_news_cubit/similar_news_cubit.dart';
import 'package:newsly/features/news_details/presentation/widgets/book_mark_button.dart';
import 'package:newsly/features/news_details/presentation/widgets/news_details_view_body.dart';

class NewsDetailsView extends StatelessWidget {
  const NewsDetailsView({super.key});

  static const String routeName = '/newsDetails';

  @override
  Widget build(BuildContext context) {
    Article article = GoRouterState.of(context).extra as Article;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<SimilarNewsCubit>()..getSimilarNews(article.keywords),
        ),
      ],

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.kPrimaryColor,
          actions: [BookMarkButton(article: article)],
        ),
        backgroundColor: AppColors.kPrimaryLightColor,
        body: NewsDetailsViewBody(article: article),
      ),
    );
  }
}
