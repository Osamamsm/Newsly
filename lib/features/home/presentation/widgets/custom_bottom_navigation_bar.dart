import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/core/constants/constants.dart';
import 'package:newsly/features/home/presentation/view_model/nav_bar_cubit/nav_bar_cubit.dart';

class CustomButtonNavigationBar extends StatelessWidget {
  const CustomButtonNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBarCubit, int>(
      builder: (context, state) {
        return AnimatedNotchBottomBar(
          notchBottomBarController: context
              .read<NavBarCubit>()
              .notchBottomBarController,
          bottomBarItems: Constants.bottomNavigationBarItemsLocalized(context),
          onTap: (value) {
            context.read<NavBarCubit>().updateIndex(value);
          },
          kIconSize: 20,
          kBottomRadius: 5,
          showLabel: false,
          durationInMilliSeconds: 100,
          color: AppColors.kPrimaryLightColor,
          notchColor: AppColors.white,
        );
      },
    );
  }
}
