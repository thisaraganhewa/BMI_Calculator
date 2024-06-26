import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(
            color: Color(0xFF0A0E21),
            titleTextStyle: TextStyle(
                color: Colors.white
            )
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.purple
        ),
      ),
      home: InputPage(),  // This line should be inside the MaterialApp widget
    );
  }
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: const Center(
        child: Text('Body Text'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: const Icon(Icons.add),
      ),
    );
  }
}
