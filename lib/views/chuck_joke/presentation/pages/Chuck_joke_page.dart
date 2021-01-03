import 'package:chuck_norris/views/chuck_category/presentation/pages/category_page.dart';
import 'package:flutter/material.dart';

class ChuckJokePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _renderAppBar(),
      body: CategoryPage(),
    );
  }

  Widget _renderAppBar() {
    return AppBar(
      title: const Text('Chuck Norris Jokes'),
      actions: [
        Icon(Icons.search),
      ],
    );
  }
}
