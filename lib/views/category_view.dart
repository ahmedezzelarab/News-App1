import 'package:flutter/material.dart';
import 'package:news_app_project/widgets/News_List_View_Buldier.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBuldier(
            category: category,
          )
        ],
      ),
    );
  }
}
