import 'dart:ui';

import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/IconChild.dart';
import 'package:bmi_calculator/ReusableCard.dart';
import 'Constants.dart';


enum Gender{
  male,
  female
}


class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleColor = kInActiveCardColor;
  Color femaleColor = kInActiveCardColor;
  Gender selectedGender = Gender.male;
  int height = 130;

  // 1 = male 2 == female
  // void updateColor( Gender gender ){
  //
  //   maleColor = gender == Gender.male ? kActiveCardColor : kInActiveCardColor;
  //   femaleColor = gender == Gender.female ? kActiveCardColor : kInActiveCardColor;
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    function: () {
                      setState(() {
                            selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male ? kActiveCardColor : kInActiveCardColor,
                    cardChild: IconChild( name: "Male", icon: FontAwesomeIcons.mars )
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      function: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female ? kActiveCardColor : kInActiveCardColor,
                      cardChild: IconChild( name: "Female", icon: FontAwesomeIcons.venus)
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      colour: kActiveCardColor,
                    cardChild:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "HEIGHT",
                          style: kLableTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: kNumberStyle
                            ),
                            const Text(
                              "cm"
                            ),
                          ],
                        ),
                        Slider(
                          value: height.toDouble(),
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                          min: kSliderMin,
                          max: kSliderMax,
                          activeColor: const Color(0xFFEB1555),
                          inactiveColor: const Color(0xFF8D8E98),

                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: kActiveCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: kActiveCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          )

        ],
      ),

    );
  }
}



