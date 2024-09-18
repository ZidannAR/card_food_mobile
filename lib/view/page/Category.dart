import 'package:flutter/material.dart';
import 'package:food_order_app1/model/category.dart';
import 'package:food_order_app1/view/widget/card_category.dart';

import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: itemCategory.length,
              itemBuilder: (context, index) {
                return ZoomTapAnimation(child: CardCategory(
                  nama: itemCategory[index].nama,
                  gambar: itemCategory[index].gambar,
                ));
              },
              ),
            )
          ],
        ),
      ),
    );
  }
}