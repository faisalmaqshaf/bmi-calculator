import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final height;
  final weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResultText() {
    if (_bmi > 25) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'You have a higher than normal body weight, Try to excercise more!';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weigth';
    } else {
      return 'You have a a lower than normal body weight, Try to eat more!';
    }
  }
}
