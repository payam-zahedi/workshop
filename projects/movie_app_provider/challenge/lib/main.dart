import 'package:flutter/material.dart';
import 'package:result/widgets/movies_list.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Movies App",
      home: MoviesListWidget(),
    );
  }
}
