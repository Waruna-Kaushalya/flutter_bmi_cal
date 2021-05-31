import 'package:flutter/material.dart';
import 'consts.dart';

class CardContentWidget extends StatelessWidget {
  CardContentWidget({required this.awesomeIcone, required this.textContent});
  final IconData awesomeIcone;
  final String textContent;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          awesomeIcone,
          size: 100,
          color: Colors.white,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          textContent,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
