import 'package:flutter/material.dart';
import 'package:newsly/core/models/category_model.dart';
import 'package:newsly/features/category_news/presentation/widgets/category_item_widget.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({super.key, required this.categories});

  final List<CategoryModel> categories;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 16,
        childAspectRatio: 1.5,
      ),
      itemCount: 10,
      itemBuilder: (context, index) =>
          CategoryItemWidget(category: categories[index]),
    );
  }
}
