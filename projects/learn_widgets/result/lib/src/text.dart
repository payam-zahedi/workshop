import 'package:flutter/material.dart';

class LearnText extends StatelessWidget {
  const LearnText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "I'm a Big red Text",
      style: TextStyle(
        color: Colors.red,
        fontSize: 32,
      ),
    );
  }
}
