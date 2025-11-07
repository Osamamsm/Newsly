import 'package:flutter/material.dart';
import 'package:newsly/features/home/presentation/widgets/custom_bottom_navigation_bar.dart';
import 'package:newsly/features/home/presentation/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String routeName = '/home-view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Newsly')),
      body: const HomeViewBody(),
      bottomNavigationBar: CustomButtonNavigationBar(),
    );
  }
}
