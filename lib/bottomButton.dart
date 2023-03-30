import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String? buttonTitle;
  final Function()? onTap;

  BottomButton({this.buttonTitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            "$buttonTitle",
            style: labelTextStyle.copyWith(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
        color: kbottomcontainerColor,
        margin: EdgeInsets.only(
          top: 10,
        ),
        padding: EdgeInsets.only(
          bottom: 20,
        ),
        width: double.infinity,
        height: bottomContainerHeight,
      ),
    );
  }
}
