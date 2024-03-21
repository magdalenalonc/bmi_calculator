import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain {
  CalculatorBrain({
    required this.height,
    required this.weight,
  });

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  (String, Color) getResult() {
    if (_bmi >= 30) {
      return ('Obese', Colors.red);
    } else if (_bmi >= 25) {
      return ('Overweight', Colors.orange);
    } else if (_bmi >= 18.5) {
      return ('Normal', Colors.green);
    } else {
      return ('Underweight', Colors.white54);
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return 'Uh oh, the result means you are in a risky zone. Your weight could lead to serious health issues like: heart problems and diabetes. Best to chat with a doc ASAP about ways to get healthier.';
    } else if (_bmi >= 25) {
      return 'Your result means you are carrying some extra kilograms. While it is not as severe as "obese", it is still a sign that you might want to watch your weight to avoid health problems down the road. Consider talking to a doc about ways to slim down and stay healthy.';
    } else if (_bmi >= 18.5) {
      return 'Looks like your result is totally fine! That is awesome news — it means you are in a healthy weight range for your height. Keep up the good work with your healthy habits, like eating well and staying active!';
    } else {
      return 'Your result means you are below the healthy weight range for your height. It is important to address this to avoid potential health issues like nutrient deficiencies and weakened immunity. Consider chatting with a doc to find ways to gain weight in a healthy way.';
    }
  }

  double getSliderValue() {
    if (_bmi >= 30.0) {
      return 30.0;
    } else if (_bmi >= 25.0) {
      return 25.0;
    } else if (_bmi >= 18.5) {
      return 18.5;
    } else {
      return 10.0;
    }
  }
}
