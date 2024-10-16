import 'package:flutter/material.dart';
import 'package:food_order_app1/movie/movie.dart';
import 'package:food_order_app1/view/page/Category.dart';
import 'package:food_order_app1/view/page/foodcategory.dart';
import 'package:food_order_app1/view/page/home.dart';
import 'package:food_order_app1/view/page/login.dart';
import 'package:food_order_app1/view/page/login1.dart';
import 'package:food_order_app1/movie/pageMovie.dart';
import 'package:food_order_app1/view/page/spalshscreen.dart';
import 'package:food_order_app1/view/widget/card_food.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}