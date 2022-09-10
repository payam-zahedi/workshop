import 'dart:convert';

import 'package:result/models/movie.dart';
import 'package:http/http.dart' as http;

final apiUrl = "http://www.omdbapi.com/?s=Batman&page=2&apikey=564727fa";

class MovieNetwork {
  Future<List<Movie>> fetchAllMovies() async {
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
}
