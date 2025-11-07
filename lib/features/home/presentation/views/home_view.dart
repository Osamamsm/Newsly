import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:newsly/core/constants/constants.dart';
import 'package:newsly/features/home/presentation/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  static const String routeName = '/home-view';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  NotchBottomBarController notchBottomBarController =
      NotchBottomBarController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Newsly')),
      body: const HomeViewBody(),
      bottomNavigationBar: AnimatedNotchBottomBar(
        notchBottomBarController: notchBottomBarController,
        bottomBarItems: Constants.bottomNavigationBarItemsLocalized(context),
        onTap: (value) {
          setState(() {
            notchBottomBarController.index = value;
          });
        },
        kIconSize: 20,
        kBottomRadius: 5,
        showLabel: false,
        durationInMilliSeconds: 100,
        color: Colors.blueGrey[200]!,
      ),
    );
  }
}
