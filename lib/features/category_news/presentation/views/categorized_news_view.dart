import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/features/category_news/presentation/widgets/categorized_news_view_body.dart';

class CategorizedNewsView extends StatelessWidget {
  const CategorizedNewsView({super.key});

  static const String routeName = '/categorized-news-view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kPrimaryLightColor,
      appBar: AppBar(backgroundColor: AppColors.kPrimaryColor),
      body: CategorizedNewsViewBody(),
    );
  }
}
