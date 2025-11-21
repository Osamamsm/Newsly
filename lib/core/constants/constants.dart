import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/core/models/category_model.dart';
import 'package:newsly/features/bookmarks/presentation/widgets/bookmarks_body.dart';
import 'package:newsly/features/category_news/presentation/widgets/categories_body.dart';
import 'package:newsly/features/feed/presentation/widgets/feed_body_bloc_provider.dart';
import 'package:newsly/features/on_boarding/presentation/widgets/first_page.dart';
import 'package:newsly/features/on_boarding/presentation/widgets/second_page.dart';
import 'package:newsly/features/on_boarding/presentation/widgets/third_page.dart';
import 'package:newsly/features/settings/presentation/widgets/settings_body.dart';
import 'package:newsly/generated/l10n.dart';

class Constants {
  Constants._();
  static List<BottomBarItem> bottomNavigationBarItemsLocalized(
    BuildContext context,
  ) {
    return [
      BottomBarItem(
        inActiveItem: Icon(Icons.feed_outlined, color: AppColors.white),
        activeItem: Icon(Icons.feed, color: AppColors.kPrimaryColor),
        itemLabel: S.of(context).feed,
      ),
      BottomBarItem(
        inActiveItem: Icon(Icons.bookmarks_outlined, color: AppColors.white),
        activeItem: Icon(Icons.bookmarks, color: AppColors.kPrimaryColor),
        itemLabel: S.of(context).bookmarks,
      ),
      BottomBarItem(
        inActiveItem: Icon(Icons.category_outlined, color: AppColors.white),
        activeItem: Icon(Icons.category, color: AppColors.kPrimaryColor),
        itemLabel: S.of(context).categories,
      ),
      BottomBarItem(
        inActiveItem: Icon(Icons.settings, color: AppColors.white),
        activeItem: Icon(Icons.settings, color: AppColors.kPrimaryColor),
        itemLabel: S.of(context).settings,
      ),
    ];
  }

  static List<Widget> homeBodies = [
    const FeedBodyBlocProvider(),
    const BookmarksBody(),
    const CategoriesBody(),
    const SettingsBody(),
  ];

  static List<Widget> onBoardingPages = [
    const FirstPage(),
    const SecondPage(),
    const ThirdPage(),
  ];

  static List<CategoryModel> categoriesListLocalized(BuildContext context) {
    return [
      CategoryModel(
        key: 'education',
        name: S.of(context).education,
        iconData: FontAwesomeIcons.school,
      ),
      CategoryModel(
        key: 'science',
        name: S.of(context).science,
        iconData: FontAwesomeIcons.flask,
      ),
      CategoryModel(
        key: 'business',
        name: S.of(context).business,
        iconData: FontAwesomeIcons.briefcase,
      ),
      CategoryModel(
        key: 'entertainment',
        name: S.of(context).entertainment,
        iconData: FontAwesomeIcons.film,
      ),
      CategoryModel(
        key: 'health',
        name: S.of(context).health,
        iconData: FontAwesomeIcons.heartPulse,
      ),
      CategoryModel(
        key: 'sports',
        name: S.of(context).sports,
        iconData: FontAwesomeIcons.football,
      ),
      CategoryModel(
        key: 'technology',
        name: S.of(context).technology,
        iconData: FontAwesomeIcons.microchip,
      ),
      CategoryModel(
        key: 'politics',
        name: S.of(context).politics,
        iconData: FontAwesomeIcons.landmark,
      ),
      CategoryModel(
        key: 'food',
        name: S.of(context).food,
        iconData: FontAwesomeIcons.bowlFood,
      ),
      CategoryModel(
        key: 'crime',
        name: S.of(context).crime,
        iconData: FontAwesomeIcons.handcuffs,
      ),
    ];
  }
}
