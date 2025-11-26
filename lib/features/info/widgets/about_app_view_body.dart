import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/core/constants/assets.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/features/info/widgets/info_card.dart';
import 'package:newsly/generated/l10n.dart';

class AboutAppViewBody extends StatelessWidget {
  const AboutAppViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          vGap(10),
          Image.asset(Assets.assetsImagesNewslyLogo, height: 100),
          vGap(20),
          Text(s.appDescription, textAlign: TextAlign.center),
          vGap(20),
          Text(s.keyFeatures, style: AppTextStyles.titleBoldBlack18),
          InfoCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FeatureItem(
                  title: s.personalizedFeed,
                  subtitle: s.personalizedFeedDescription,
                  icon: Icons.person_search_sharp,
                ),
                Divider(thickness: 1),
                FeatureItem(
                  title: s.offlineReading,
                  subtitle: s.offlineReadingDescription,
                  icon: Icons.cloud_off,
                ),
                Divider(thickness: 1),
                FeatureItem(
                  title: s.powerfulSearch,
                  subtitle: s.powerfulSearchDescription,
                  icon: Icons.search,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  const FeatureItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  final String title;
  final String subtitle;

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      titleAlignment: ListTileTitleAlignment.center,
      leading: Icon(icon),
      title: Text(title, style: AppTextStyles.titleBoldBlack16),
      subtitle: Text(subtitle),
      contentPadding: EdgeInsets.zero,
    );
  }
}
