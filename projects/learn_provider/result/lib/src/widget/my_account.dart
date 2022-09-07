import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:result/src/provider/salary_provider.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final monthlyFee = 10.0;

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
              Consumer<SalaryProvider>(
                builder: (context, provider, child) {
                  final salary = provider.getSalary();

                  return Text(
                    '${salary.toStringAsFixed(1)}\$',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  );
                },
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
                '$monthlyFee\$',
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
              Consumer<SalaryProvider>(
                builder: (context, provider, child) {
                  final salary = provider.getSalary();
                  final totalIncome = salary - monthlyFee;

                  return Text(
                    '${totalIncome.toStringAsFixed(1)}\$',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
