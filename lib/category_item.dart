import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/category_meal_screen.dart';
import './category__meals_screen_arguments.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;

  final double radius = 15;
  final double padding = 15;

  CategoryItem({this.title, this.color, this.id});

  void _onTap(BuildContext context) {
    Navigator.pushNamed(context, CategoryMealsScreen.routeName,
        arguments: ScreenArguments(title, id));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _onTap(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(radius),
      child: Container(
        padding: EdgeInsets.all(padding),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color.withOpacity(1)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(radius)),
      ),
    );
  }
}
