import 'package:flutter/material.dart';

class LearnColumn extends StatelessWidget {
  const LearnColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            color: Colors.red,
            child: Text(
              "I'm a Container",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,
            color: Colors.green,
            child: Text(
              "I'm a Container",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            color: Colors.blue,
            child: Text(
              "I'm a Container",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
