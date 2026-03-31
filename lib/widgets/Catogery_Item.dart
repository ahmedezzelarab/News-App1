import 'package:flutter/material.dart';
import 'package:news_app_project/models/CatogertModel.dart';
import 'package:news_app_project/views/category_view.dart';

class Catogeryitem extends StatelessWidget {
  const Catogeryitem({super.key, required this.catogery});
  final CatogeryItemmodel catogery;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CategoryView(category: catogery.name);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          height: 120,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: AssetImage(catogery.image), fit: BoxFit.fill),
          ),
          child: Center(
            child: Text(
              catogery.name,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 10),
            ),
          ),
        ),
      ),
    );
  }
}
