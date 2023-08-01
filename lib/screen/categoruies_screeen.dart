import 'package:flutter/material.dart';
import 'package:sheger_food/data/dammy_data.dart';
import 'package:sheger_food/model/category.dart';
import 'package:sheger_food/screen/meals.dart';

import '../widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  // get i => null;

  void _selectCategory(BuildContext context, String name) {
    print('Navigation Called');
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => MealScreen(title: name, meals: dummyMeals)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick your categories'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          // avialbleCategory
          //     .map((categty) => CategoryGridItem(category: categty))
          //     .toList(),
          for (final cat in avialbleCategory)
            CategoryGridItem(
              category: cat,
              onSelectCategoty: () {
                _selectCategory(context, cat.title);
              },
            ),
        ],
      ),
    );
  }
}
