import 'package:flutter/material.dart';
import 'package:learn_scaffold/src/scaffold_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Scaffold Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScaffoldPage(),
    );
  }
}
