import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/core/constants/assets.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/generated/l10n.dart';

class EmptySearchBody extends StatelessWidget {
  const EmptySearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                Assets.assetsImagesEmptySearchImage,
                height: 250,
                width: 250,
                fit: BoxFit.cover,
              ),
            ),

            vGap(10),

            Text(
              S.of(context).empty_search_title,
              style: AppTextStyles.titleBoldPrimary20,
              textAlign: TextAlign.center,
            ),

            vGap(10),

            Text(
              S.of(context).empty_search_subtitle,
              style: AppTextStyles.bodyMediumDarkGrey18,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
