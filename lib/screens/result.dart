import 'package:bmi_calculator/screens/constants.dart';
import 'package:bmi_calculator/widgets/custom_button.dart';
import 'package:bmi_calculator/widgets/resuable_card.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.result});
  final double result;

  String inTransalateResult() {
    if (result >= 0 && result <= 18)
      return 'You\'re Underweight 😒';
    else if (result >= 19 && result <= 26)
      return 'You\'re in shape (Normal & or Healthly Weight) 😍';
    else
      return 'You\'re Obuse 😒';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kActiveCardColour,
        appBar: AppBar(
          title: Text('BMI Calculator Result'),
          backgroundColor: kActiveCardColour,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
              child: Text(
                'Your Result:',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade500,
                ),
              ),
            ),
            Expanded(
                child: ResuableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    result.toStringAsFixed(1),
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    inTransalateResult(),
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade400,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            )),
            CustomButton(
              onPressed: () {
                Navigator.pop(context);
              },
              title: 'Re-calculate',
            )
          ],
        ));
  }
}
