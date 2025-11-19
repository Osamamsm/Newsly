import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/core/dependency_injection/di.dart';
import 'package:newsly/features/category_news/presentation/view_model/cubit/get_category_news_cubit.dart';
import 'package:newsly/features/category_news/presentation/widgets/categorized_news_view_body.dart';

class CategorizedNewsView extends StatelessWidget {
  const CategorizedNewsView({super.key});

  static const String routeName = '/categorized-news-view';
  @override
  Widget build(BuildContext context) {
    final String category = GoRouterState.of(context).extra as String;
    return BlocProvider(
      create: (context) =>
          getIt<GetCategoryNewsCubit>()..getCategoryNews(category),
      child: Scaffold(
        backgroundColor: AppColors.kPrimaryLightColor,
        appBar: AppBar(backgroundColor: AppColors.kPrimaryColor),
        body: CategorizedNewsViewBody(category: category,),
      ),
    );
  }
}
