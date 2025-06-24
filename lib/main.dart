import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0A0E21)),
        scaffoldBackgroundColor: Color(0XFF0A0E21),
      ),
    );
  }
}
