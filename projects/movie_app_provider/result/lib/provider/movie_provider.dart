import 'package:flutter/cupertino.dart';
import 'package:result/models/movie.dart';
import 'package:result/network/movie_network.dart';

class MovieProvider extends ChangeNotifier {
  MovieProvider(this.network);

  final MovieNetwork network;

  // Movies property
  List<Movie> _movies = const [];

  void setMovies(List<Movie> newMovies) {
    if (_movies != newMovies) {
      _movies = newMovies;
      notifyListeners();
    }
  }

  List<Movie> getMovies() => _movies;

  // loading property
  bool _loading = false;

  void setLoading(bool newLoading) {
    if (_loading != newLoading) {
      _loading = newLoading;
      notifyListeners();
    }
  }

  bool getLoading() => _loading;
  // error property
  String? _error = null;

  void setError(String? newError) {
    if (_error != newError) {
      _error = newError;
      notifyListeners();
    }
  }

  String? getError() => _error;

  Future<void> fetchMovies() async {
    try {
      setError(null);
      setLoading(true);
      setMovies([]);

      await Future.delayed(Duration(seconds: 3));

      final newMovies = await network.fetchAllMovies();
      setLoading(false);

      setMovies(newMovies);
    } on Exception catch (e) {
      setLoading(false);
      setError(e.toString());
    }
  }
}
