import 'package:flutter/material.dart';

class LearnButton extends StatelessWidget {
  const LearnButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onButtonPressed,
      child: Text("Press Me"),
    );
  }

  void onButtonPressed() {
    print("Button was pressed");
  }
}
