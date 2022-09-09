import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:result/models/movie.dart';
import 'package:result/widgets/movies_list.dart';

final apiUrl = "http://www.omdbapi.com/?s=Batman&page=2&apikey=564727fa";

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _App createState() => _App();
}

class _App extends State<App> {
  List<Movie> _movies = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Movies App",
      home: MoviesListWidget(movies: _movies),
    );
  }
}
