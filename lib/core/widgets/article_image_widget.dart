import 'package:flutter/material.dart';

class ArticleImageWidget extends StatelessWidget {
  const ArticleImageWidget({super.key, required this.width, required this.height});

final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://www.coinreaders.com/imgdata/coinreaders_com/202506/716_716_2025061021366390.jpg",
      fit: BoxFit.contain,
      width: width,
      height: height,
    );
  }
}
