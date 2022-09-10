import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:result/provider/movie_provider.dart';
import 'package:result/widgets/movie_detail.dart';

class MoviesListWidget extends StatefulWidget {
  const MoviesListWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<MoviesListWidget> createState() => _MoviesListWidgetState();
}

class _MoviesListWidgetState extends State<MoviesListWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<MovieProvider>().fetchMovies();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Movies')),
      body: Consumer<MovieProvider>(
        builder: (context, provider, child) {
          if (provider.getLoading()) {
            return Center(child: CircularProgressIndicator());
          } else if (provider.getError() != null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(provider.getError()!),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      context.read<MovieProvider>().fetchMovies();
                    },
                    child: Text('retry'),
                  ),
                ],
              ),
            );
          }

          final movies = provider.getMovies();

          return ListView.builder(
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
          );
        },
      ),
    );
  }
}
