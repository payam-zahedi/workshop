import 'package:flutter/material.dart';
import 'package:result/src/follow_us_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Community App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FollowUsScreen(),
    );
  }
}
