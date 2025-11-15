import 'package:flutter/material.dart';

class ArticleTitleWidget extends StatelessWidget {
  const ArticleTitleWidget({
    super.key,
    required this.horizontalPadding,
    required this.style,
  });

  final TextStyle style;
  final double horizontalPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Text(
        "Nearly 1 million bottles of prosecco recalled from Costco",
        textAlign: TextAlign.start,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,

        style: style,
      ),
    );
  }
}
