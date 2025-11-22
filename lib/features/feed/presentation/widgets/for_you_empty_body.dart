import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/core/constants/assets.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/features/settings/presentation/views/manage_interests_view.dart';
import 'package:newsly/features/settings/presentation/widgets/custom_button.dart';
import 'package:newsly/generated/l10n.dart';

class ForYouEmptyBody extends StatelessWidget {
  const ForYouEmptyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(50),
          child: Image.asset(
            Assets.assetsOnBoardingFirstPageLightImage,
            width: 250,
          ),
        ),
        vGap(10),
        Text(
          S.of(context).empty_feed_title_text,
          style: AppTextStyles.titleBoldBlack26,
        ),
        vGap(10),
        Text(
          S.of(context).empty_feed_desc_text,
          style: AppTextStyles.bodyMediumDarkGrey18,
          textAlign: TextAlign.center,
        ),
        vGap(10),
        CustomButton(
          onTap: () {
            context.push(ManageInterestsView.routeName);
          },
          width: double.infinity,
          text: S.of(context).choose_your_interests,
        ),
      ],
    );
  }
}
