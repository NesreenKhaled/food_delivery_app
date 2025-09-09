import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/search_page.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xffFFFFFF),
      elevation: 2,
      shadowColor: Colors.grey.withAlpha(200),
      automaticallyImplyLeading: false,
      toolbarHeight: 100,
      title: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 10,
          bottom: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return SearchPage();
                    },
                  ),
                );
              },
              child: Container(
                height: 40,
                width: 160,
                padding: const EdgeInsets.symmetric(horizontal: 6),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueGrey, width: 0),
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.search, color: Colors.purple, size: 18),
                    SizedBox(width: 6),
                    Text(
                      'Buscar',
                      style: TextStyle(color: Colors.grey, fontSize: 9),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              'Inicio',
              style: TextStyle(color: Color(0xff5117AC), fontSize: 35),
            ),

            Row(
              children: const [
                Icon(Icons.notifications, color: Colors.greenAccent, size: 30),
                SizedBox(width: 8),
                Icon(Icons.settings, color: Colors.redAccent, size: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
