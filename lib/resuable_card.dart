import 'package:flutter/material.dart';

class ReusebleCard extends StatelessWidget {
  ReusebleCard({
    required this.onPress,
    required this.colour,
    this.cardChild,
  });

  final Color? colour;
  final Widget? cardChild;

  // final VoidCallback? onPress;
  final Function onPress;
  // final Function() onPress;
  // final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: colour,
          // Color(0xFF1D1E33)
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
