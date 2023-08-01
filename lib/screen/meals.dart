import 'package:flutter/material.dart';
import 'package:sheger_food/model/meals.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({super.key, required this.title, required this.meals});
  final String title;
  final List<Meal> meals;
  @override
  Widget build(Object context) {
    Widget mealList = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) => Text(meals[index].title));

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: meals.isEmpty
          ? const Center(
              child: Text('Noo Meals Added'),
            )
          : mealList,
    );
  }
}
