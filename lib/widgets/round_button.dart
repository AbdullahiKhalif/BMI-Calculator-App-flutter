import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({required this.icon, this.onpressed});
  final IconData icon;
  final Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpressed,
      shape: CircleBorder(),
      fillColor: Colors.grey.withOpacity(0.5),
      constraints: BoxConstraints.tightFor(
        height: 56,
        width: 56,
      ),
      child: Icon(icon),
    );
  }
}
