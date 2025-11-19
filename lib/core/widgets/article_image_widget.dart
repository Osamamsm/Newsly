import 'package:flutter/material.dart';

class ArticleImageWidget extends StatelessWidget {
  const ArticleImageWidget({
    super.key,
    required this.width,
    required this.height,
    required this.imageUrl,
  });

  final double width;
  final double height;
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl ??
          "https://artsmidnorthcoast.com/wp-content/uploads/2014/05/no-image-available-icon-6-300x188.png",
      fit: BoxFit.cover,
      width: width,
      height: height,
      errorBuilder: (context, error, stackTrace) {
        return Container(
          color: Colors.grey.shade200,
          child: Icon(Icons.broken_image, size: 200, color: Colors.grey),
        );
      },
    );
  }
}
