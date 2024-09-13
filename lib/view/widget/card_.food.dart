import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardFood extends StatelessWidget {
  final String nama;
  final String harga;
  final String rating;
  final String img;
  const CardFood({
    super.key, required this.nama, required this.harga, required this.rating, required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Center(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 3 / 2, 
              
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)
                ),
                child: Image(image: AssetImage(img),
                fit: BoxFit.cover,),
              ),
              
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(nama, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    ],
                  ),
                  Gap(10),
                  Row(
                    children: [
                      Text(harga,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                      Gap(100),
                      Icon(Icons.star),
                      Gap(15), 
                      Text(rating)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}