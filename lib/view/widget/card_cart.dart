import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardCart extends StatelessWidget {
  final String nama;
  final String jumlah;
  final String harga;
  final String gambar;
  const CardCart({
    super.key,
    required this.nama,
    required this.jumlah,
    required this.harga,
    required this.gambar,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // image
        SizedBox(
          width: 40,
          height: 40,
          child: ClipRRect(
            borderRadius: BorderRadiusDirectional.all(Radius.circular(5)),
            child: Image.asset(
              gambar,
              fit: BoxFit.cover,
            ),
          ),
        ),
        // tittle & amount
        Gap(20),
         Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(nama),
              Text(jumlah),
            ],
          ),
        ),
        // price
         Text(harga)
      ],
    );
  }
}
