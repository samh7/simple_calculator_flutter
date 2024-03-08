import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends ChangeNotifier {
  String equation = '0';
  String result = '0';
  String history = '';
  void calculate(String buttonText) {
    if (buttonText == "C") {
      equation = '0';
      result = '0';
    } else if (buttonText == "X") {
      equation = equation.substring(0, equation.length - 1);
      result = equation;
    } else if (buttonText == "=") {
      try {
        Parser parser = Parser();
        Expression exp = parser.parse(equation);
        ContextModel cm = ContextModel();
        result = '${exp.evaluate(EvaluationType.REAL, cm)}';
        // equation = result;
      } catch (e) {
        result = 'Error';
        equation = '';
      }
    } else {
      if (equation == "0" || equation == "Error") {
        equation = '';
      }
      equation = equation + buttonText;

      result = equation;
    }

    notifyListeners();
  }
}
