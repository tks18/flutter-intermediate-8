import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/inputpage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0Xff0a0e21),
        scaffoldBackgroundColor: Color(0Xff0a0e21),
      ),
      home: InputPage(),
    );
  }
}
