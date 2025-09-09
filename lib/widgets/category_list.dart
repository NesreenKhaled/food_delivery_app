import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/category_card_model.dart';
import 'package:food_delivery_app/widgets/category_card.dart';

class CategoryList extends StatelessWidget {
  CategoryList({super.key});

  final List<CategoryCardModel> categories = [
    CategoryCardModel(
      name: 'Tacos',
      img: 'assets/Group 107.jpg',
      bkcolor: Colors.orangeAccent,
    ),
    CategoryCardModel(
      name: 'Hot Dog',
      img: 'assets/Group 159.jpg',
      bkcolor: Colors.yellowAccent,
    ),
    CategoryCardModel(
      name: 'Burger',
      img: 'assets/Group 169.png',
      bkcolor: Colors.lightBlueAccent,
    ),
    CategoryCardModel(
      name: 'Pizza',
      img: 'assets/Group 197.png',
      bkcolor: Colors.greenAccent,
    ),
    CategoryCardModel(
      name: 'Tacos',
      img: 'assets/Group 107.jpg',
      bkcolor: Colors.orangeAccent),
      CategoryCardModel(
      name: 'Tacos',
      img: 'assets/Group 107.jpg',
      bkcolor: Colors.orangeAccent)
  ];

  @override
  Widget build(BuildContext context) {
    double cardSize = MediaQuery.of(context).size.width * 0.2;
    double totalHeight = cardSize + 8 + 20; // Container + SizedBox + Text

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Explorar categorias',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Ver todo',
                style: TextStyle(fontSize: 10, color: Colors.grey.shade300),
              ),
            ],
          ),
        ),
        SizedBox(
          height: totalHeight, // ارتفاع ديناميكي صحيح
          child: ListView.builder(
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: CategoryCard(catCard: categories[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
