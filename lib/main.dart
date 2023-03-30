import 'package:bmi_calculator/bmi_page.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(const bmiApp());
}

class bmiApp extends StatelessWidget {
  const bmiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kscaffoldColor,
        appBarTheme: AppBarTheme(
          backgroundColor: kinactiveCardColor,
        ),
      ),
      home: SafeArea(
        child: bmiPage(),
      ),
    );
  }
}
