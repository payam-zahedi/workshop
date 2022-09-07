import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final salary = 20.0;
    final monthlyFee = 10.0;
    final totalIncome = salary - monthlyFee;

    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Salary',
                style: TextStyle(fontSize: 24),
              ),
              Text(
                '${salary.toStringAsFixed(1)}\$',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Monthly fee',
                style: TextStyle(fontSize: 24),
              ),
              Text(
                '${monthlyFee.toStringAsFixed(1)}\$',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total income',
                style: TextStyle(fontSize: 24),
              ),
              Text(
                '${totalIncome.toStringAsFixed(1)}\$',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
