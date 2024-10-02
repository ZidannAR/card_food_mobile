import 'package:flutter/material.dart';
import 'package:food_order_app1/movie/movie.dart';
import 'package:food_order_app1/movie/movieModel.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 1, 17, 66),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "find you best",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Movie",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30),
                  ),
                ],
              ),
              Gap(10),
              TextField(
                decoration: InputDecoration(
                    suffix: Icon(Icons.search),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Color.fromARGB(100, 227, 231, 225),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20))),
              ),
              Gap(10),
              Row(
                children: [
                  Text("Now Playing",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15)),
                ],
              ),
              Expanded(
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemCount: itemMovie.length,
                      itemBuilder: (context, index) {
                        return ZoomTapAnimation(
                          child: MovieCard(
                            nama: itemMovie[index].nama,
                            img: itemMovie[index].img,
                            genre: itemMovie[index].genre,
                          ),
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
