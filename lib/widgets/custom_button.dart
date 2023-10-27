import 'package:bmi_calculator/screens/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, this.title});
  final Function()? onPressed;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: onPressed,
        child: Text(
          title ?? 'CALCULATE',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        fillColor: kBottomContainerColour,
        constraints: BoxConstraints.tightFor(
          height: 60,
          width: double.infinity,
        ));
  }
}
