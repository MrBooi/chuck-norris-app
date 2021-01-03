import 'package:chuck_norris/views/chuck_category/domain/entities/chuck_categories.dart';
import 'package:flutter/material.dart';

import 'category_card.dart';

class CategoryList extends StatelessWidget {
  final ChuckCategories categories;

  const CategoryList({Key key, @required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: categories.categories.length,
      itemBuilder: (builderContext, index) {
        final String category = categories.categories[index];
        return CategoryCard(category: category);
      },
    );
  }
}
