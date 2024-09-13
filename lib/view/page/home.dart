import 'package:flutter/material.dart';
import 'package:food_order_app1/model/food.dart';
import 'package:food_order_app1/view/widget/card_.food.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text('Experience the great food'),
            Text('our dailly healty food'),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount:itemfood.length ,
                itemBuilder: (context, index) {
                  return ZoomTapAnimation(child: CardFood(nama: itemfood[index].nama, harga: itemfood[index].harga, rating: itemfood[index].rating, img: itemfood[index].img));
                },
                ),
            )
          ],
        )
      )
    );
  }
}

