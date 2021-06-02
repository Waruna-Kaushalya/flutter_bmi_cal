import 'dart:math';
import 'package:bmi_calculator/screenArguments.dart';

class CalculationBrain {
  CalculationBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);

    return _bmi.toStringAsFixed(4);
  }

  String getResult() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi >= 25
        ? 'overweight'
        : _bmi > 18.5
            ? 'Normal'
            : 'Underweight';
    // if (_bmi >= 25) {
    //   return 'overweight';
    // } else if (_bmi > 18.5) {
    //   return 'Normal';
    // } else {
    //   return 'Underweight';
    // }
  }

  String getInterpretation() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi >= 25
        ? 'Try exercise more'
        : _bmi > 18.5
            ? 'Good Job'
            : 'Eat more';
    // if (_bmi >= 25) {
    //   return 'overweight';
    // } else if (_bmi > 18.5) {
    //   return 'Normal';
    // } else {
    //   return 'Underweight';
    // }
  }
}
