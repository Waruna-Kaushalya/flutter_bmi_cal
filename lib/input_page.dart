import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resuable_card.dart';
import 'icon_content.dart';

const double bottomContainerHeight = 80;
const Color activeCardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111310);
const Color bottomContainerColor = Color(0xFFEB1555);
const IconData maleIcone = FontAwesomeIcons.mars;
const IconData femaleIcone = FontAwesomeIcons.venus;
const String iconeTextMale = 'MALE';
const String iconeTextFemale = 'FEMALE';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    } else {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(
                            1,
                          );
                        });
                      },
                      child: ReusebleCard(
                        colour: maleCardColor,
                        cardChild: CardContentWidget(
                          awesomeIcone: maleIcone,
                          textContent: iconeTextMale,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(2);
                        });
                      },
                      child: ReusebleCard(
                        colour: femaleCardColor,
                        cardChild: CardContentWidget(
                          awesomeIcone: femaleIcone,
                          textContent: iconeTextFemale,
                        ),

                        // cardChild: CardContentWidget(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusebleCard(
                colour: activeCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusebleCard(
                      colour: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusebleCard(
                      colour: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
              height: bottomContainerHeight,
            ),
          ],
        ),
      ),
    );
  }
}
