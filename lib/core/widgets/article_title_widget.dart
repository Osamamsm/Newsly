import 'package:flutter/material.dart';
import 'package:newsly/generated/l10n.dart';

class ArticleTitleWidget extends StatelessWidget {
  const ArticleTitleWidget({
    super.key,
    required this.horizontalPadding,
    required this.style,
    required this.maxLines,
    required this.title,
  });

  final String? title;
  final int maxLines;
  final TextStyle style;
  final double horizontalPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Text(
        title ?? S.of(context).unavailable,
        textAlign: TextAlign.start,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,

        style: style,
      ),
    );
  }
}
