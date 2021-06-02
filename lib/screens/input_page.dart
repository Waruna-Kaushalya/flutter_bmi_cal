import 'package:bmi_calculator/screens/result_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/resuable_card.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/components/bottomButtonWidget.dart';
import 'package:bmi_calculator/components/roundButton.dart';
import 'package:bmi_calculator/consts.dart';
import 'package:bmi_calculator/calculation.dart';
import 'package:bmi_calculator/screenArguments.dart';

enum GenderType {
  male,
  female,
}

int height = 180;
int weight = 50;
int age = 50;
Map<String, int> hwValues = {};

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType genderTypeVarble = GenderType.male;

  // stateSetterAA(int a) {
  //   setState(() {
  //     if (a == 1) {
  //       weight++;
  //     } else {
  //       weight--;
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI Calculator',
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusebleCard(
                      onPress: () {
                        setState(() {
                          genderTypeVarble = GenderType.male;
                        });
                      },
                      colour: genderTypeVarble == GenderType.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: CardContentWidget(
                        awesomeIcone: kMaleIcone,
                        textContent: kIconeTextMale,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusebleCard(
                      onPress: () {
                        setState(() {
                          genderTypeVarble = GenderType.female;
                        });
                      },
                      colour: genderTypeVarble == GenderType.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: CardContentWidget(
                        awesomeIcone: kFemaleIcone,
                        textContent: kIconeTextFemale,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusebleCard(
                onPress: () {},
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kLabelNumberStyle,
                        ),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15,
                        ),
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 30,
                        ),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                            hwValues['heightValue'] = height;
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusebleCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kLabelNumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                onPress: () {
                                  setState(() {
                                    weight--;
                                    hwValues['weightValue'] = weight;
                                  });
                                },
                                icon: FontAwesomeIcons.minus,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                onPress: () {
                                  setState(() {
                                    weight++;
                                    hwValues['weightValue'] = weight;
                                  });
                                },
                                icon: FontAwesomeIcons.plus,
                              ),
                            ],
                          ),
                        ],
                      ),
                      onPress: () {},
                      colour: kActiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusebleCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kLabelNumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                onPress: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                onPress: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus,
                              ),
                            ],
                          ),
                        ],
                      ),
                      onPress: () {},
                      colour: kActiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            BottomButtonWdgt(
              onPress: () {
                CalculationBrain calc =
                    CalculationBrain(height: height, weight: weight);
                Navigator.pushNamed(context, ResultRoute.routeName,
                    arguments: ScreenArguments(calc.getResult(),
                        calc.calculateBMI(), calc.getInterpretation()));
              },
              buttonLabel: 'CALCULATE',
            ),
          ],
        ),
      ),
    );
  }
}
