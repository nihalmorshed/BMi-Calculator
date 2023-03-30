import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class roundbutton extends StatelessWidget {
  final IconData icon;
  final Function press;
  roundbutton({required this.icon, required this.press});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      fillColor: kfloatingbuttonColor,
      elevation: 6.0,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      onPressed: press as void Function()?,
    );
  }
}
