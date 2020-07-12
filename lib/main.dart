import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        // add a color with 0xFF(+colorpickercode)
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF101338),
      ),
      home: InputPage(),
    );
  }
}
