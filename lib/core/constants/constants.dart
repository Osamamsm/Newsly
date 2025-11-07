import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:newsly/generated/l10n.dart';

class Constants {
  Constants._();
  static List<BottomBarItem> bottomNavigationBarItemsLocalized(
    BuildContext context,
  ) {
    return [
      BottomBarItem(
        inActiveItem: Icon(Icons.home_outlined),
        activeItem: Icon(Icons.home),
        itemLabel: S.of(context).feed,
      ),
      BottomBarItem(
        inActiveItem: Icon(Icons.bookmarks_outlined),
        activeItem: Icon(Icons.bookmarks),
        itemLabel: S.of(context).bookmarks,
      ),
      BottomBarItem(
        inActiveItem: Icon(Icons.category_outlined),
        activeItem: Icon(Icons.category),
        itemLabel: S.of(context).categories,
      ),
      BottomBarItem(
        inActiveItem: Icon(Icons.settings),
        activeItem: Icon(Icons.settings),
        itemLabel: S.of(context).settings,
      ),
    ];
  }
}
