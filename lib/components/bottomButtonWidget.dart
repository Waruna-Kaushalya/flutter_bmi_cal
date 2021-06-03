import 'package:flutter/material.dart';
import '../../consts.dart';

class BottomButtonWdgt extends StatelessWidget {
  BottomButtonWdgt({required this.onPress, required this.buttonLabel});
  final String buttonLabel;

  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            buttonLabel,
            style: kCalculateLabel,
          ),
        ),
        color: kBottomContainerColor,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        height: kBottomContainerHeight,
      ),
    );
  }
}
