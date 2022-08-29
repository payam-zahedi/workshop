import 'package:flutter/material.dart';

class LearnAlign extends StatelessWidget {
  const LearnAlign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        width: 200,
        height: 200,
        alignment: Alignment.center,
        color: Colors.blue,
        child: Text(
          "I'm have bottomRight alignment",
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
