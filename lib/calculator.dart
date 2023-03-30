import 'dart:math';

class Calculator {
  final int? height;
  final int? weight;
  double _bmi = 0;

  Calculator({this.height, this.weight});

  String calculateBMI() {
    double heightInMetre = height! / 100;
    _bmi = weight! / pow(heightInMetre, 2);
    return _bmi.toStringAsFixed(3);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'Obesity';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return 'Your BMI result is HUGE! you should go see a doctor!';
    } else if (_bmi >= 25) {
      return 'Your BMI result is quite high, you should exercise more';
    } else if (_bmi >= 18.5) {
      return 'Your BMI result is normal, good job!';
    } else {
      return 'Your BMI result is quite low, you should eat more';
    }
  }
}
