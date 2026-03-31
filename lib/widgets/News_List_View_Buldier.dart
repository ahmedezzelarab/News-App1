import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_project/models/artilce_model.dart';

import 'package:news_app_project/services/NewsService.dart';
import 'package:news_app_project/widgets/NewsListTile.dart';

class NewsListViewBuldier extends StatefulWidget {
  const NewsListViewBuldier({super.key, required this.category});
  final String category;
  @override
  State<NewsListViewBuldier> createState() => _NewsListViewBuldierState();
}

class _NewsListViewBuldierState extends State<NewsListViewBuldier> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListTile(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('oops  was an error, try later'),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
