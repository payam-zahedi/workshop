import 'package:flutter/cupertino.dart';

class SalaryProvider extends ChangeNotifier {
  SalaryProvider(this._salary);

  double _salary;

  void setSalary(double newSalary) {
    // we can validate the incoming salary value
    _salary = newSalary;
    notifyListeners();
  }

  double getSalary() => _salary;
}
