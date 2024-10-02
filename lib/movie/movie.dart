import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardMovie extends StatelessWidget {
  final String img;
  final String nama;
  final String genre;
  const CardMovie(
      {super.key, required this.img, required this.nama, required this.genre});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: MovieCard(
              genre: "Crime,Drama,Thiler",
              img:
                  "https://m.media-amazon.com/images/M/MV5BMjg5NGViMDMtYjQ0Zi00Njg4LWExNjMtN2NlNmM0ZGQyOTBkXkEyXkFqcGc@._V1_QL75_UX480_.jpg",
              nama: "Joker"),
        ),
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final String nama;
  final String img;
  final String genre;

  const MovieCard({
    super.key,
    required this.nama,
    required this.img,
    required this.genre,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 10,
          color: Colors.transparent,
          child: Center(
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 1 / 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    child: Image(
                      image: NetworkImage(img),
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    child: Container(
                      height: 70,
                      width: double.infinity,
                      color: Colors.black.withOpacity(0.5),
                      child: Column(
                        children: [
                          Text(
                            nama,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            genre,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
