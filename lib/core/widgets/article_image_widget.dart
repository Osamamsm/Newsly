import 'package:flutter/material.dart';

class ArticleImageWidget extends StatelessWidget {
  const ArticleImageWidget({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://i2-prod.devonlive.com/article10646738.ece/ALTERNATES/s615/0_GettyImages-2224678357.jpg",
      fit: BoxFit.cover,
      width: width,
      height: height,
    );
  }
}
