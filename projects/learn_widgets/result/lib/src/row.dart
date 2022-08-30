import 'package:flutter/material.dart';

class LearnRow extends StatelessWidget {
  const LearnRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 70,
            height: 70,
            alignment: Alignment.center,
            color: Colors.red,
            child: Text(
              "I'm a Container",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 90,
            height: 90,
            alignment: Alignment.center,
            color: Colors.green,
            child: Text(
              "I'm a Container",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 70,
            height: 70,
            alignment: Alignment.center,
            color: Colors.blue,
            child: Text(
              "I'm a Container",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
