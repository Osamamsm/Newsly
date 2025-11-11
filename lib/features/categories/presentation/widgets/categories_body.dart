import 'package:flutter/material.dart';
import 'package:newsly/core/constants/constants.dart';
import 'package:newsly/features/categories/presentation/widgets/categories_grid_view.dart';

class CategoriesBody extends StatelessWidget {
  const CategoriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CategoriesGridView(
      categories: Constants.categoriesListLocalized(context),
    );
  }
}
