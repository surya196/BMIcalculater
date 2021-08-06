import 'dart:math';

import 'package:bmicalculater/screens/homepage.dart';

class Calculator {
  final int height;
  final int weight;
// ignore: unused_field
  double? _bmi;
  Calculator(this.height, this.weight);

  String bmi() {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi.toString();
  }

  String result() {
    if (_bmi! >= 25) {
      return 'OverWeight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }
  String bmiresult() {
    if (_bmi! >= 25) {
      return 'you have overWeight work more';
    } else if (_bmi! > 18.5) {
      return 'you have Normal weight, good job';
    } else {
      return 'you have a UnderWeight, eat more';
    }
  }
}
