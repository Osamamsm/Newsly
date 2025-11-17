import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/features/home/presentation/widgets/custom_bottom_navigation_bar.dart';
import 'package:newsly/features/home/presentation/widgets/home_view_body.dart';
import 'package:newsly/features/search/presentation/views/search_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String routeName = '/home-view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Newsly', style: AppTextStyles.titleBoldWhite18),
        backgroundColor: AppColors.kPrimaryColor,
        actions: [
          IconButton(
            onPressed: () {
              context.push(SearchView.routeName);
            },
            icon: Icon(Icons.search_sharp, size: 30),
          ),
        ],
      ),
      backgroundColor: AppColors.kPrimaryLightColor,
      body: const HomeViewBody(),
      bottomNavigationBar: CustomButtonNavigationBar(),
    );
  }
}
