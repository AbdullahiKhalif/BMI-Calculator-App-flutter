import 'package:flutter/cupertino.dart';

import '../screens/constants.dart';

class ResuableCard extends StatelessWidget {
  ResuableCard({this.child, this.selcted = false, this.onPressed});
  final Widget? child;
  final Function()? onPressed;
  final bool? selcted;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: selcted == true ? kActiveCardColour : kInactiveCardColour,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}
