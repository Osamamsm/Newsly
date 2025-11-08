import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/features/bookmarks/presentation/widgets/bookmarks_body.dart';
import 'package:newsly/features/categories/presentation/widgets/categories_body.dart';
import 'package:newsly/features/feed/presentation/widgets/feed_body.dart';
import 'package:newsly/features/settings/presentation/widgets/settings_body.dart';
import 'package:newsly/generated/l10n.dart';

class Constants {
  Constants._();
  static List<BottomBarItem> bottomNavigationBarItemsLocalized(
    BuildContext context,
  ) {
    return [
      BottomBarItem(
        inActiveItem: Icon(Icons.feed_outlined, color: AppColors.darkGrey),
        activeItem: Icon(Icons.feed, color: AppColors.kPrimaryColor),
        itemLabel: S.of(context).feed,
      ),
      BottomBarItem(
        inActiveItem: Icon(Icons.bookmarks_outlined, color: AppColors.darkGrey),
        activeItem: Icon(Icons.bookmarks, color: AppColors.kPrimaryColor),
        itemLabel: S.of(context).bookmarks,
      ),
      BottomBarItem(
        inActiveItem: Icon(Icons.category_outlined, color: AppColors.darkGrey),
        activeItem: Icon(Icons.category, color: AppColors.kPrimaryColor),
        itemLabel: S.of(context).categories,
      ),
      BottomBarItem(
        inActiveItem: Icon(Icons.settings, color: AppColors.darkGrey),
        activeItem: Icon(Icons.settings, color: AppColors.kPrimaryColor),
        itemLabel: S.of(context).settings,
      ),
    ];
  }

  static List<Widget> homeBodies = [
    const FeedBody(),
    const BookmarksBody(),
    const CategoriesBody(),
    const SettingsBody(),
  ];
}
