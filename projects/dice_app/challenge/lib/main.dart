import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DicePage(),
    ),
  );
}


/// Hint* you should use [Random] class and [nextInt] method to generate random int
class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Let`s roll a Dice'),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: const Center(
        child: Text(
          'Create a Roll a dice game',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
