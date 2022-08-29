import 'package:flutter/material.dart';

class LearnContainer extends StatelessWidget {
  const LearnContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      alignment: Alignment.center,
      color: Colors.blue,
      child: Text(
        "I'm a Container",
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
        ),
      ),
    );
  }
}
