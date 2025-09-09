import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/category_card_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.catCard});
  final CategoryCardModel catCard;

  @override
  Widget build(BuildContext context) {
    double cardSize = MediaQuery.of(context).size.width * 0.2;

    return Column(
      children: [
        SizedBox(
          width: cardSize,
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8), 
              decoration: BoxDecoration(
                color: catCard.bkcolor,
                borderRadius: BorderRadius.circular(12),
              ),
              clipBehavior: Clip.hardEdge,
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Image.asset(catCard.img),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
        SizedBox(
          width: cardSize,
          child: Text(
            catCard.name,
            style: TextStyle(fontSize: 14),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
