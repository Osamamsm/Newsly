import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/features/search/presentation/widgets/custom_search_text_field.dart';
import 'package:newsly/features/search/presentation/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  static String routeName = '/search-view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColors.kPrimaryColor,
        title: CustomSearchTextField(),
      ),
      backgroundColor: AppColors.kPrimaryLightColor,
      body: SearchViewBody(),
    );
  }
}
