import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.title});
  final IconData icon;
  String title;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 60,
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
