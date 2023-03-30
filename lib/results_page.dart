import 'package:bmi_calculator/CardBox.dart';
import 'package:bmi_calculator/bottomButton.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class resultsPage extends StatelessWidget {
  final String? bmiResult;
  final String? resultText;
  final String? interpretation;
  resultsPage({this.bmiResult, this.resultText, this.interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI Calculator'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: ktittleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CardBox(
              clr: kactiveCardColor,
              CardBoxchild: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "$resultText",
                      style: kresultTextStyle,
                    ),
                    Text(
                      "$bmiResult",
                      style: numberTextStyle,
                    ),
                    Text(
                      "$interpretation",
                      style: labelTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            buttonTitle: "RE-CALCULATE",
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
