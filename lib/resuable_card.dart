import 'package:flutter/material.dart';

class ReusebleCard extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;

  ReusebleCard({required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,
        // Color(0xFF1D1E33)
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}
