import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CardBoxChildWidget extends StatelessWidget {
  final IconData? icon;
  final String? text;

  CardBoxChildWidget({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text!,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
