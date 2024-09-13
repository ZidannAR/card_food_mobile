import 'package:flutter/material.dart';

class Spalshscreen extends StatelessWidget {
  const Spalshscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [Icon(Icons.rice_bowl,size: 300,color: Colors.black,),
            Text("Warung Makan ", )] 

          ),
        ),
      ),
    );
  }
}