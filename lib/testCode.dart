// import 'package:bmi_calculator/consts.dart';
// import 'package:bmi_calculator/resuable_card.dart';
// import 'package:flutter/material.dart';
// import 'bottomButtonWidget.dart';

// class ResultRoute extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'BMI CALCULATOR',
//         ),
//       ),
//       body: Container(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Expanded(
//               child: ReusebleCard(
//                 onPress: () {},
//                 colour: kActiveCardColor,
//                 cardChild: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Text(
//                       'NORMAL',
//                       style: TextStyle(
//                         color: Colors.green,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text(
//                       '19.2',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 80,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Column(
//                       children: [
//                         Text(
//                           'You have a normal body weight',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 15,
//                           ),
//                         ),
//                         Text(
//                           'Good job!',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 15,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 Navigator.pop(context);
//               },
//               child: BottomButtonWidget(
//                 textLabel: 'RE-CALCULATE',
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'consts.dart';

// class BottomButtonWidget extends StatelessWidget {
//   BottomButtonWidget({required this.textLabel, required this.onTap});

//   final String textLabel;
//   final Function onTap;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap(),
//       child: Container(
//         child: Center(
//           child: Text(
//             textLabel.toString(),
//             style: kCalculateLabel,
//           ),
//         ),
//         color: kBottomContainerColor,
//         width: double.infinity,
//         margin: EdgeInsets.only(top: 10),
//         height: kBottomContainerHeight,
//       ),
//     );
//   }
// }
