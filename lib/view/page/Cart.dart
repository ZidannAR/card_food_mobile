import 'package:flutter/material.dart';
import 'package:food_order_app1/model/Cart.dart';
import 'package:food_order_app1/view/widget/card_cart.dart';
import 'package:gap/gap.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("pesanan"),
                Text("Tambah Pesanan")
              ],
            ),
            Gap(10),
            Expanded(
              child:  ListView.separated(
                itemCount: itemCart.length,
                separatorBuilder: (context, index) => Divider(),
                itemBuilder: (context , index){
                  return CardCart(
                    nama: itemCart[index].nama,
                    jumlah: itemCart[index].jumlah,
                    harga: itemCart[index].harga,
                    gambar: itemCart[index].gambar,
                  );
                },
              )
            )
          ],
        ),
      )
    );
  }
}
