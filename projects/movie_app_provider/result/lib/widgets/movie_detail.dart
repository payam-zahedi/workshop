import 'package:flutter/material.dart';
import 'package:result/models/movie.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({Key? key, required this.movie}) : super(key: key);

  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: ListView(
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  movie.poster,
                  height: 400,
                ),
              ),
            ),
            SizedBox(height: 8),
            Text('Year: ${movie.year}'),
            SizedBox(height: 8),
            Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
          ],
        ),
      ),
    );
  }
}
