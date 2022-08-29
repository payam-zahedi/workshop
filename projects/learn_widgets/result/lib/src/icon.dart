import 'package:flutter/material.dart';

class LearnIcon extends StatelessWidget {
  const LearnIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      alignment: Alignment.center,
      color: Colors.blue,
      child: Icon(
        Icons.camera_alt,
        size: 46,
        color: Colors.red,
      ),
    );
  }
}
