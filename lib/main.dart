import 'package:flutter/material.dart';
import 'input page.dart';
import 'reusable_card.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /* theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(
              0xFF0A0E21), // set the background color of the app bar to red
        ),
        // appBarTheme: Colors.black,
        // appBarTheme: ThemeData.dark(),
        primaryColor: Colors.red,
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.blue), // for the main text
          bodyText2: TextStyle(color: Colors.white), // for the secondary text
        ),

        //Color: Colors.black,
        backgroundColor: Colors.red,
        accentColor: Colors.purple,
      ),*/
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(
              0xFF0A0E21), // set the background color of the app bar to red
        ),
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}
