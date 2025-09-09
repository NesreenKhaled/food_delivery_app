import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/category_card_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.catCard});
  final CategoryCardModel catCard;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // نستخدم 20% من مساحة الأب المتاحة بدل الشاشة كلها
        double containerSize = constraints.maxWidth * 0.2;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: containerSize,
              width: containerSize,
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                color: catCard.bkcolor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Image.asset(catCard.img),
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              catCard.name,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        );
      },
    );
  }
}
