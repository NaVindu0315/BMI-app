import 'dart:math';

class Calculator {
  Calculator({required this.weight, required this.height});
  int height;
  int weight;
  double _bmi = 0;

  String CalculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'underweight';
    }
  }

  String bodyshaming() {
    if (_bmi >= 25) {
      return 'Try to Reduce some Weight';
    } else if (_bmi > 18.5) {
      return 'you have a normal Body ';
    } else {
      return 'You have a lower than normal body weight Eat More';
    }
  }
}
