import 'package:flutter/material.dart';
import 'package:food_order_app1/model/historymodel.dart';
import 'package:food_order_app1/view/widget/card_history.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Riwayat Pesanan",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            const Gap(10),
            Expanded(
              child: ListView.builder(
                itemCount: listhistory.length,
                itemBuilder: (context, index) {
                  return ZoomTapAnimation(
                    onTap: () {},
                    child: CardHistory(
                      tanggal: listhistory[index].tanggal,
                      harga: listhistory[index].harga,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
