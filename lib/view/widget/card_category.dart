import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {
  final String gambar;
  final String nama;

  const CardCategory({super.key, required this.gambar, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRect(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                gambar,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                child: ClipRect(
                  child: Container(
                      height: 50,
                      width: double.infinity,
                      color: Colors.black.withOpacity(0.5),
                      child: Center(
                        child: Text(
                          nama,
                          style: const TextStyle(color: Colors.white),
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
