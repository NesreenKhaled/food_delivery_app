import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/AppBar_widget.dart';
import 'package:food_delivery_app/widgets/category_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: const CustomAppBar(),
    body: CategoryList(),
    );
  }
}
