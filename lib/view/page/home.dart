import 'package:flutter/material.dart';
import 'package:food_order_app1/model/food.dart';
import 'package:food_order_app1/view/widget/card_food.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
      children: [
        // Header dengan gaya yang lebih menarik
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Experience the great food',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 1.2,
                ),
              ),
              const Gap(8), // Jarak antara judul dan subjudul
              Text(
                'Our daily healthy food',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemCount: itemfood.length,
            itemBuilder: (context, index) {
              return ZoomTapAnimation(
                  child: CardFood(
                      nama: itemfood[index].nama,
                      harga: itemfood[index].harga,
                      rating: itemfood[index].rating,
                      img: itemfood[index].img));
            },
          ),
        )
      ],
    )));
  }
}
