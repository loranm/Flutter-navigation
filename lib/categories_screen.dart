import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/category_item.dart';

import './mockedData/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = '/ ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeals'),
      ),
      body: categoryWidget,
    );
  }

  Widget categoryWidget = GridView(
      padding: EdgeInsets.all(15),
      children: DUMMY_CATEGORIES
          .map((category) => CategoryItem(
              title: category.title, color: category.color, id: category.id))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10));
}
