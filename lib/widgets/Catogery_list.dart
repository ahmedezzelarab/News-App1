import 'package:flutter/material.dart';
import 'package:news_app_project/models/CatogertModel.dart';
import 'package:news_app_project/widgets/Catogery_Item.dart';

class CatogeryListItem extends StatelessWidget {
  const CatogeryListItem({
    super.key,
  });
  final List<CatogeryItemmodel> categoriees = const [
    CatogeryItemmodel(name: 'business', image: 'assets/busineess.jpeg'),
    CatogeryItemmodel(name: 'entertainment', image: 'assets/entertaiment.avif'),
    CatogeryItemmodel(name: 'health', image: 'assets/health.avif'),
    CatogeryItemmodel(name: 'science', image: 'assets/science.avif'),
    CatogeryItemmodel(name: 'technology', image: 'assets/busineess.jpeg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoriees.length,
          itemBuilder: (BuildContext context, index) {
            return Catogeryitem(catogery: categoriees[index]);
          }),
    );
  }
}
