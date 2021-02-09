import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});

  final int weight;
  final int height;
  double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Over Weight';
    } else if (_bmi >= 18) {
      return 'Normal Weight';
    } else {
      return 'Under Weight';
    }
  }

  String getInterception() {
    if (_bmi >= 25) {
      return 'You have a lot of weight. Please Exercise';
    } else if (_bmi >= 18) {
      return 'Well done you have a normal weight keep it up';
    } else {
      return 'Please eat more';
    }
  }
}
