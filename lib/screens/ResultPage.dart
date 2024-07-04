import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/components/ReusableCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/ResultCard.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "BMI CALCULATOR"
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30.0,
          ),
         Container(
           padding: const EdgeInsets.only( bottom: 10.0 ),
           child: const Text(
             "Your Result",
             style: kYourResult,
           ),
         ),
          Expanded(
              child: ResultCard(
                cardChild: const Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Text(
                      "OVERWEIGHT",
                      style: kResultTextStyle,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric( vertical: 80.0 ),
                      child: Text(
                        "23.0",
                        style: kResultNumberStyle,
                      ),
                    ),
                    Text(
                        "Prompt",
                      style: kResultPromptStyle,
                    ),

                  ],
                ),
                colour: kActiveCardColor,
              )
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(
                  context,
                  "/"
              );
            },
            child: Container(
              color: kBottomContainerColor,
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
              child: const Center(
                child: Text(
                  "RE - CALCULATE",
                  style: kBottomTextStyle,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
