import 'package:bmi_calculator/consts.dart';
import 'package:bmi_calculator/components/resuable_card.dart';
import 'package:flutter/material.dart';
import '../components/bottomButtonWidget.dart';
import 'package:bmi_calculator/screenArguments.dart';

class ResultRoute extends StatelessWidget {
  //TODO 3: define rout name as string
  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    //TODO 4: define object for access ScreenArguments class data
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ReusebleCard(
              onPress: () {},
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    //TODO 5: access ScreenArguments data
                    args.bmiResultValue,
                    style: kresultNormal,
                  ),
                  Text(
                    args.resultTextShortMsg,
                    style: kresultValueLabel,
                  ),
                  Column(
                    children: [
                      Text(
                        args.interpretationText,
                        style: kmsgLabel,
                      ),
                      // Text(
                      //   'Good job!',
                      //   style: kmsgLabel,
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          BottomButtonWdgt(
            onPress: () {
              Navigator.pop(context);
            },
            buttonLabel: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
