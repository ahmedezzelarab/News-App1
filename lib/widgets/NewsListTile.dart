import 'package:flutter/material.dart';
import 'package:news_app_project/models/artilce_model.dart';
import 'package:news_app_project/widgets/NewsTile.dart';

class NewsListTile extends StatelessWidget {
  const NewsListTile({super.key, required this.articles});

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return NewsTile(
        article: articles[index],
      );
    }));
  }
}
