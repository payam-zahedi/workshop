import 'package:flutter/material.dart';

class LearnCenter extends StatelessWidget {
  const LearnCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        alignment: Alignment.center,
        color: Colors.blue,
        child: Text(
          "I'm have Center alignment",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}