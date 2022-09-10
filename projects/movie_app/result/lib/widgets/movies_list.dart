import 'package:flutter/material.dart';
import 'package:result/models/movie.dart';
import 'package:result/widgets/movie_detail.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

final apiUrl = "http://www.omdbapi.com/?s=Batman&page=2&apikey=564727fa";

class MoviesListWidget extends StatefulWidget {
  const MoviesListWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<MoviesListWidget> createState() => _MoviesListWidgetState();
}

class _MoviesListWidgetState extends State<MoviesListWidget> {
  List<Movie> movies = [];

  @override
  void initState() {
    super.initState();
    _populateAllMovies();
  }

  void _populateAllMovies() async {
    final resutlMovies = await _fetchAllMovies();
    setState(() {
      movies = resutlMovies;
    });
  }

  Future<List<Movie>> _fetchAllMovies() async {
    final response = await http.get(
      Uri.parse(apiUrl),
    );

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      Iterable list = result["Search"];
      return list.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception("Failed to load movies!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Movies')),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];

          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MovieDetail(movie: movie),
                ),
              );
            },
            title: Row(
              children: [
                SizedBox(
                  width: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(movie.poster),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(movie.title),
                        Text(movie.year),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
