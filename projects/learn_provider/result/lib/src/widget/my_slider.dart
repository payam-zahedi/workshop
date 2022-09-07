import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:result/src/provider/salary_provider.dart';

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
      value: context.watch<SalaryProvider>().getSalary(),
      min: 0,
      max: 100,
      onChanged: (changedValue) {
        context.read<SalaryProvider>().setSalary(changedValue);
      },
    );
  }
}
