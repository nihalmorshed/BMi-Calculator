import 'package:bmi_calculator/bottomButton.dart';
import 'package:bmi_calculator/calculator.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/results_page.dart';
import 'package:bmi_calculator/roundButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'CardBox.dart';
import 'CardboxChild.dart';

class bmiPage extends StatefulWidget {
  @override
  State<bmiPage> createState() => _bmiPageState();
}

class _bmiPageState extends State<bmiPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;
  void setFemale() {
    setState(() {
      selectedGender = Gender.female;
    });
  }

  void setMale() {
    setState(() {
      selectedGender = Gender.male;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI Calculator'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardBox(
                    clr: (selectedGender == Gender.male)
                        ? kactiveCardColor
                        : kinactiveCardColor,
                    CardBoxchild: CardBoxChildWidget(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                    change: setMale,
                  ),
                ),
                Expanded(
                  child: CardBox(
                    clr: (selectedGender == Gender.female)
                        ? kactiveCardColor
                        : kinactiveCardColor,
                    CardBoxchild: CardBoxChildWidget(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                    change: setFemale,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CardBox(
              clr: kinactiveCardColor,
              CardBoxchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: labelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        '$height',
                        style: numberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: labelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      activeTrackColor: Colors.white,
                      thumbColor: kbottomcontainerColor,
                      inactiveTrackColor: kfontColor,
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30.0,
                      ),
                      overlayColor: ksliderOverlayColor,
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardBox(
                    clr: kinactiveCardColor,
                    CardBoxchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: labelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              "$weight",
                              style: numberTextStyle,
                            ),
                            Text(
                              "kg",
                              style: labelTextStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            roundbutton(
                              icon: FontAwesomeIcons.minus,
                              press: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            roundbutton(
                              icon: FontAwesomeIcons.plus,
                              press: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CardBox(
                    clr: kinactiveCardColor,
                    CardBoxchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: labelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              "$age",
                              style: numberTextStyle,
                            ),
                            Text(
                              "yrs",
                              style: labelTextStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            roundbutton(
                              icon: FontAwesomeIcons.minus,
                              press: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            roundbutton(
                              icon: FontAwesomeIcons.plus,
                              press: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              Calculator calc = Calculator(height: height, weight: weight);
              String _bmi = calc.calculateBMI();
              String _result = calc.getResult();
              String _interpretation = calc.getInterpretation();

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => resultsPage(
                    bmiResult: _bmi,
                    resultText: _result,
                    interpretation: _interpretation,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
