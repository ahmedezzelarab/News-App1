import 'package:flutter/material.dart';
import 'package:news_app_project/widgets/Catogery_list.dart';
import 'package:news_app_project/widgets/News_List_View_Buldier.dart';

class Home_view extends StatelessWidget {
  const Home_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "News",
                style: TextStyle(color: Color.fromARGB(255, 166, 151, 151)),
              ),
              Text(
                "Cloud",
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: CatogeryListItem(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              NewsListViewBuldier(
                category: 'general',
              )
            ],
          ),
        ));
  }
}
