import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/core/constants/assets.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/features/info/widgets/info_card.dart';
import 'package:newsly/features/info/widgets/social_buttons_row.dart';
import 'package:newsly/generated/l10n.dart';

class AboutDeveloperViewBody extends StatelessWidget {
  const AboutDeveloperViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(Assets.assetsImagesDevImage),
          ),
          vGap(10),
          Text(s.dev_name, style: AppTextStyles.titleBoldBlack22),
          Text(s.mobileAppDeveloper, style: AppTextStyles.bodyMediumDarkGrey18),
          vGap(10),
          InfoCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(s.aboutMe, style: AppTextStyles.titleBoldBlack18),
                vGap(10),
                Text(
                  s.aboutMeDescription,
                  style: AppTextStyles.bodyMediumDarkGrey14,
                ),
              ],
            ),
          ),
          SocialButtonsRow(),
          vGap(10),
        ],
      ),
    );
  }
}
