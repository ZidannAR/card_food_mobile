class Cart {
  final String id;
  final String nama;
  final String jumlah;
  final String harga;
  final String gambar;

  Cart({
    required this.id,
    required this.nama,
    required this.jumlah,
    required this.harga,
    required this.gambar,

  });

}

List<Cart> itemCart = [
    Cart(id: "1", nama: "Naspad", jumlah: "5x", harga: "Rp.20.000", gambar: "bro.jpg"),
    Cart(id: "1", nama: "Naspad", jumlah: "5x", harga: "Rp.20.000", gambar: "bro.jpg"),
    Cart(id: "1", nama: "Naspad", jumlah: "5x", harga: "Rp.20.000", gambar: "bro.jpg"),
    Cart(id: "1", nama: "Naspad", jumlah: "5x", harga: "Rp.20.000", gambar: "bro.jpg"),
    Cart(id: "1", nama: "Naspad", jumlah: "5x", harga: "Rp.20.000", gambar: "bro.jpg"),
    Cart(id: "1", nama: "Naspad", jumlah: "5x", harga: "Rp.20.000", gambar: "bro.jpg"),
    Cart(id: "1", nama: "Naspad", jumlah: "5x", harga: "Rp.20.000", gambar: "bro.jpg"),
];