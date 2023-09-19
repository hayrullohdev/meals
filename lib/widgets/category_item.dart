import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
// ignore: unused_import
import 'package:meals/screens/categories_screen.dart';
// ignore: duplicate_import
import '../models/category.dart';
// ignore: duplicate_import, unused_import
import '../screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem({
    super.key,
    required this.category,
  });

  void _gotoCategoryMealsScreen(BuildContext context) {
    // Navigator.of(context).push(MaterialPageRoute(
    //     builder: (context) => CategoryMealsScreen(
    //           categoryName: category.title,
    //         )));
    Navigator.of(context).pushNamed(CategoryMealsScreen.routeName, arguments: category.title,);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _gotoCategoryMealsScreen(context),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                category.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.4),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                category.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
