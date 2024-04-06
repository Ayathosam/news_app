import 'package:flutter/material.dart';
import 'package:news_app1/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel category;

  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        height: 120,
        width: 180,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(category.imageAssetURL)),
            borderRadius: BorderRadius.circular(16)),
        child: Center(
            child: Text(
          category.categoryName,
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
