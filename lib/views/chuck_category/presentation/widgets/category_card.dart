import 'package:chuck_norris/views/chuck_joke/presentation/pages/chuck_display_page.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String category;

  const CategoryCard({Key key, @required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ChuckDisplayPage(
              query: category,
            ),
          ),
        );
      },
      child: Card(
        key: key,
        elevation: 2,
        child: Container(
          child: Center(
            child: Text(category.toUpperCase()),
          ),
        ),
      ),
    );
  }
}
