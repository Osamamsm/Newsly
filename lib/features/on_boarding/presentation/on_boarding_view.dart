import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/core/constants/constants.dart';
import 'package:newsly/features/home/presentation/views/home_view.dart';
import 'package:newsly/features/on_boarding/presentation/view_model/cubit/on_boarding_cubit.dart';
import 'package:newsly/features/on_boarding/presentation/view_model/cubit/on_boarding_state.dart';
import 'package:newsly/features/settings/presentation/widgets/custom_button.dart';
import 'package:newsly/generated/l10n.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({super.key});
  final pageController = PageController();
  static String routeName = '/on-boarding-view';
  final List<Widget> pages = Constants.onBoardingPages;
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<OnBoardingCubit>();
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, right: 8, left: 8, bottom: 100),
        child: BlocBuilder<OnBoardingCubit, OnBoardingState>(
          builder: (context, state) {
            return PageView.builder(
              controller: pageController,
              itemCount: pages.length,
              onPageChanged: (value) {
                cubit.pageChanged(value);
              },
              itemBuilder: (context, index) => pages[index],
            );
          },
        ),
      ),
      bottomSheet: BlocBuilder<OnBoardingCubit, OnBoardingState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                CustomButton(
                  text: S.of(context).skip,
                  onTap: () {
                    cubit.completeOnBoarding();
                    context.go(HomeView.routeName);
                  },
                  width: 100,
                ),
                CustomButton(
                  text: state.isLastPage ?S.of(context).done : S.of(context).next,
                  onTap: () {
                    if (state.isLastPage) {
                      cubit.completeOnBoarding();
                      context.go(HomeView.routeName);
                    } else {
                      pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.bounceInOut,
                      );
                    }
                  },
                  width: 100,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
