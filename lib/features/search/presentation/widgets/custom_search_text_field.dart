import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/generated/l10n.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 5),
      height: 40,
      decoration: BoxDecoration(
        color: AppColors.kPrimaryLightColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        maxLines: 1,
        cursorColor: AppColors.kPrimaryColor,
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 4, vertical: 6),
          hintText: S.of(context).search,
          hintStyle: AppTextStyles.bodyMediumGrey14,
          suffixIcon: IconButton(
            icon: Icon(Icons.search_sharp),
            onPressed: () {},
          ),
          suffixIconColor: AppColors.kPrimaryColor,
        ),
      ),
    );
  }
}