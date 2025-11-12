import 'package:flutter/material.dart';
import 'package:newsly/core/helpers/spacing.dart';

class ArticlesListView extends StatelessWidget {
  const ArticlesListView({super.key, required this.itemBuilder});

  final Widget Function(BuildContext build) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) => itemBuilder(context),
      separatorBuilder: (context, index) => vGap(15),
    );
  }
}
