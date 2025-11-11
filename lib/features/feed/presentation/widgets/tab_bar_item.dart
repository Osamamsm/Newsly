import 'package:flutter/material.dart';

class TabBarItem extends StatelessWidget {
  const TabBarItem({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 90, child: Tab(text: text, height: 35));
  }
}
