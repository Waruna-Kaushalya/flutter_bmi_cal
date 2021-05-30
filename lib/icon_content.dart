import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18,
  color: Color(
    0xFF8D8E98,
  ),
);

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
          style: TextStyle(
            fontSize: 18,
            color: Colors.blue,
          ),
        )
      ],
    );
  }
}
