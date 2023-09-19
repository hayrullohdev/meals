import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals/models/category.dart';
import 'package:meals/screens/category_meals_screen.dart';
// ignore: unused_import
import 'package:meals/widgets/category_item.dart';

import './screens/categories_screen.dart';
// ignore: duplicate_import
import './screens/category_meals_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  final _categoryModel = Categories();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      routes: {
        CategoryMealsScreen.routeName: (context) => const CategoryMealsScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: CategoriesScreen(categories: _categoryModel.list),
    );
  }
}
