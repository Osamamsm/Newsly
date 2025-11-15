import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/features/news_details/presentation/widgets/news_details_view_body.dart';

class NewsDetailsView extends StatelessWidget {
  const NewsDetailsView({super.key});

  static const String routeName = '/newsDetails';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.kPrimaryColor),
      backgroundColor: AppColors.kPrimaryLightColor,
      body: NewsDetailsViewBody(),
    );
  }
}
