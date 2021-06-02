import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/result_route.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        accentColor: Colors.pink,
      ),
      home: InputPage(),
      routes: {
        ResultRoute.routeName: (context) => ResultRoute(),
      },
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => InputPage(),
      //   '/first': (context) => ResultRoute(
      //         bmiResult: 'bmiResult',
      //         resultText: 'resultText',
      //         interpretation: 'interpretation',
      //       ),
      // },
    );
  }
}
