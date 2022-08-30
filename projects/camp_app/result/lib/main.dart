import 'package:flutter/material.dart';
import 'package:result/src/camp_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Camp app demo',
      home: CampPage(),
    );
  }
}
