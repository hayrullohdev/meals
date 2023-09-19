import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:meals/models/category.dart';

import '../widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen({
    super.key,
  });

  static const routeName = "/category-meals";
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final categoryTitle = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) => const MealItem(),
        itemCount: 2,
      ),
    );
  }
}
