import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/core/constants/assets.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/generated/l10n.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 30),
      child: Column(
        children: [
          Image.asset(Assets.assetsOnBoardingThirdPageLightImage,width: 300),
          vGap(20),
          Text(
            S.of(context).third_on_boarding_title_text,
            style: AppTextStyles.titleBoldBlack26,
            textAlign: TextAlign.center,
          ),
          vGap(20),
          Text(
            S.of(context).third_on_boarding_desc_text,
            style: AppTextStyles.bodyMediumDarkGrey18,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}