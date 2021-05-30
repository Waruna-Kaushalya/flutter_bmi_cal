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

enum GenderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType genderTypeVarble = GenderType.male;

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
                    child: ReusebleCard(
                      onPress: () {
                        setState(() {
                          genderTypeVarble = GenderType.male;
                        });
                      },
                      colour: genderTypeVarble == GenderType.male
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: CardContentWidget(
                        awesomeIcone: maleIcone,
                        textContent: iconeTextMale,
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
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: CardContentWidget(
                        awesomeIcone: femaleIcone,
                        textContent: iconeTextFemale,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusebleCard(
                onPress: () {},
                colour: activeCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusebleCard(
                      onPress: () {},
                      colour: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusebleCard(
                      onPress: () {},
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
