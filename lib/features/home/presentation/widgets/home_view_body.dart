import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsly/core/constants/constants.dart';
import 'package:newsly/features/home/presentation/view_model/nav_bar_cubit/nav_bar_cubit.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBarCubit,int>(builder: (context, state) {
      return Constants.homeBodies[state];
    });
  }
}