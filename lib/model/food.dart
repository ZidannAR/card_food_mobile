class Food {
  final String nama;
  final String harga;
  final String rating;
  final String img;

  Food({
    required this.nama,
     required this.harga, 
     required this.rating, 
     required this.img
    });
}

final List<Food> itemfood =[
      Food(nama: "makanan1", harga: "Rp. 10.000", rating: "4.6", img: "bro.jpg"),
      Food(nama: "makanan2", harga: "Rp. 15.000", rating: "4.3", img: "anime.jpg"),
      Food(nama: "makanan3", harga: "Rp. 32.000", rating: "4.8", img: "anime2.png"),
      Food(nama: "makanan4", harga: "Rp. 25.000", rating: "4.9", img: "bro.jpg"),
];