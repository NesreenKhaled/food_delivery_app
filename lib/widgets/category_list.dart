import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/category_card_model.dart';
import 'package:food_delivery_app/widgets/category_card.dart';

class CategoryList extends StatelessWidget {
  CategoryList({super.key});

  final List<CategoryCardModel> categories = [
    CategoryCardModel(
      name: 'Pizza',
      img: 'assets/Group 197.png',
      bkcolor: Color(0xffFFACAC),
    ),
    CategoryCardModel(
      name: 'Tacos',
      img: 'assets/Group 159.png',
      bkcolor: Color.fromARGB(255, 216, 230, 188),
    ),
    CategoryCardModel(
      name: 'Fries',
      img: 'assets/Group 107.png',
      bkcolor: Color(0xff86E3CE),
    ),
    CategoryCardModel(
      name: 'Burger',
      img: 'assets/Group 169.png',
      bkcolor: Color(0xffFFDD95),
    ),
    CategoryCardModel(
      name: 'Tacos',
      img: 'assets/Group 159.png',
      bkcolor: Color.fromARGB(255, 216, 230, 188),
    ),

    CategoryCardModel(
      name: 'Burger',
      img: 'assets/Group 169.png',
      bkcolor: Color(0xffFFDD95),
    ),
    CategoryCardModel(
      name: 'Pizza',
      img: 'assets/Group 197.png',
      bkcolor: Color(0xffFFACAC),
    ),
  ];

  @override
  Widget build(BuildContext context) {
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
                style: TextStyle(fontSize: 20, color: Colors.indigo.shade900),
              ),
              Text(
                'Ver todo',
                style: TextStyle(fontSize: 10, color: Colors.grey.shade300),
              ),
            ],
          ),
        ),
        Expanded(
          child: SizedBox(
            // height: 85, 
            child: ListView.builder(
              // shrinkWrap: true,
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
        ),
      ],
    );
  }
}
