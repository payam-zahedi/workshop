import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({
    Key? key,
  }) : super(key: key);

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  @override
  Widget build(BuildContext context) {
    return Slider(
      value: 20,
      min: 0,
      max: 100,
      onChanged: (changedValue) {},
    );
  }
}
