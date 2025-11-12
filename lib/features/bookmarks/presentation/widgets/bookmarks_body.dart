import 'package:flutter/material.dart';
import 'package:newsly/features/bookmarks/presentation/widgets/book_marked_article_widget.dart';

class BookmarksBody extends StatelessWidget {
  const BookmarksBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: BookMarkedArticleWidget());
  }
}
