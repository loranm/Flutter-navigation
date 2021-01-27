import 'package:flutter/material.dart';

import './category__meals_screen_arguments.dart';
import './mockedData/dummy_data.dart';
import 'models/meal.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final ScreenArguments routeArguments =
        ModalRoute.of(context).settings.arguments;

    List<Meal> currentCategoryMeals = DUMMY_MEALS
        .where((element) => element.categories.contains(routeArguments.id))
        .toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(routeArguments.title),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return Text(currentCategoryMeals[index].title);
          },
          itemCount: currentCategoryMeals.length,
        ));
  }
}
