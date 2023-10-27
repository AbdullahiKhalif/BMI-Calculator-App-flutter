import 'package:bmi_calculator/screens/constants.dart';
import 'package:bmi_calculator/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(primaryColor: kActiveCardColour),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
