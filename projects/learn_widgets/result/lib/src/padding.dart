import 'package:flutter/material.dart';

class LearnPadding extends StatelessWidget {
  const LearnPadding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32),
      child: Container(
        width: 200,
        height: 200,
        alignment: Alignment.center,
        color: Colors.blue,
        child: Text(
          "I have padding from left and top",
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
