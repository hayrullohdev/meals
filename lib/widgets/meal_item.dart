import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  const MealItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/images/burger.jpg",
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 200,
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.all(10),
                    color: Colors.black.withOpacity(0.5),
                    child: const Text(
                      "Burger",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_outline,
                      color: Colors.black54,
                      size: 20,
                    ),
                  ),
                  const Text("12 minutes"),
                  const Text("\$20"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
