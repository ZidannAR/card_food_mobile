import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardHistory extends StatelessWidget {
  final String tanggal;
  final String harga;
  const CardHistory({super.key, required this.tanggal, required this.harga});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Gap(5),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(20),
              SizedBox(
                width: double.infinity,
                height: 70,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tanggal,
                              style: TextStyle(
                                color: Colors.grey, fontSize: 15
                              ),                            ),
                              Text(
                                harga,
                                style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                              ),

                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        )
      ],
    );
  }
}