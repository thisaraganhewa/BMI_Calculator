import 'package:bmi_calculator/screens/ResultPage.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(
            color: Color(0xFF0A0E21),
            titleTextStyle: TextStyle(
                color: Colors.white
            )
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      // home: InputPage(),  // This line should be inside the MaterialApp widget
      initialRoute: "/",
      routes: {
        "/": (context) => InputPage(),
        "/result": (context) => const ResultPage()
      },
    );
  }
}



