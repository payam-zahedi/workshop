import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:result/network/movie_network.dart';
import 'package:result/provider/movie_provider.dart';
import 'package:result/widgets/movies_list.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return MovieProvider(MovieNetwork());
      },
      child: MaterialApp(
        title: "Movies App",
        home: MoviesListWidget(),
      ),
    );
  }
}
