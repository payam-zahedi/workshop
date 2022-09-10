import 'package:flutter/material.dart';
import 'package:result/models/movie.dart';
import 'package:result/widgets/movie_detail.dart';

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
                    child: Image.network('Image poster'),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Title'),
                        Text('Year'),
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
