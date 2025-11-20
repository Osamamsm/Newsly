import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/core/constants/constants.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/features/settings/presentation/widgets/custom_button.dart';
import 'package:newsly/features/settings/presentation/widgets/custom_category_check_box.dart';

class ManageInterestsViewBody extends StatefulWidget {
  const ManageInterestsViewBody({super.key});

  @override
  State<ManageInterestsViewBody> createState() =>
      _ManageInterestsViewBodyState();
}

class _ManageInterestsViewBodyState extends State<ManageInterestsViewBody> {
  List<String> selectedCategories = [];

  @override
  Widget build(BuildContext context) {
    var categories = Constants.categoriesListLocalized(context);
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              itemCount: categories.length,
              separatorBuilder: (context, index) => vGap(10),
              itemBuilder: (context, index) {
                final category = categories[index];
                final isSelected = selectedCategories.contains(category.name);

                return CustomCategoryCheckBox(
                  label: categories[index].name,
                  value: isSelected,
                  onChanged: (checked) {
                    setState(() {
                      if (checked) {
                        selectedCategories.add(categories[index].name);
                      } else {
                        selectedCategories.remove(categories[index].name);
                      }
                    });
                  },
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 12),
            color: AppColors.kPrimaryLightColor,
            child: CustomButton(
              onTap: () {
                context.pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
