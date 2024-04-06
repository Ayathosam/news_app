import 'package:flutter/material.dart';
import 'package:news_app1/models/category_model.dart';

import 'categort_card.dart';

class CategoriesListView extends StatelessWidget {
  final List<CategoryModel> categories = [
    CategoryModel(
        imageAssetURL: "assets/images/business.jpg", categoryName: " business"),
    CategoryModel(
        imageAssetURL: "assets/images/health.jpg", categoryName: " health"),
    CategoryModel(
        imageAssetURL: "assets/images/sports.jpg", categoryName: " sports"),
    CategoryModel(
        imageAssetURL: "assets/images/sciencee.jpg", categoryName: "science"),
    CategoryModel(
        imageAssetURL: "assets/images/technology.jpeg",
        categoryName: "technology"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
