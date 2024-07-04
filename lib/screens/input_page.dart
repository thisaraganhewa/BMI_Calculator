import 'dart:ui';

import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/IconChild.dart';
import 'package:bmi_calculator/components/ReusableCard.dart';
import '../Constants.dart';
import '../components/RoundedIconButton.dart';

enum Gender { male, female }



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = kInActiveCardColor;
  Color femaleColor = kInActiveCardColor;
  Gender selectedGender = Gender.male;
  int height = 130;
  int weight = 50;
  int age = 20;


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
                      colour: selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInActiveCardColor,
                      cardChild:
                          IconChild(name: "Male", icon: FontAwesomeIcons.mars)),
                ),
                Expanded(
                  child: ReusableCard(
                      function: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female
                          ? kActiveCardColor
                          : kInActiveCardColor,
                      cardChild: IconChild(
                          name: "Female", icon: FontAwesomeIcons.venus)),
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
                    cardChild: Column(
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
                            Text(height.toString(), style: kNumberStyle),
                            const Text("cm"),
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
                          activeColor: kSliderActiveColor,
                          inactiveColor: kSliderInActiveColor,
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
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "WIEGHT",
                          style: kLableTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundedIconButton(
                              icon: const Icon(
                                FontAwesomeIcons.plus,
                              ),
                              onPress: () {
                                setState(() {
                                ++weight;
                              });
                              },
                            ),
                            RoundedIconButton(
                              icon: const Icon(
                                FontAwesomeIcons.minus,
                              ),
                              onPress: () {
                                setState(() {
                                  --weight;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "AGE",
                          style: kLableTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundedIconButton(
                              icon: const Icon(
                                FontAwesomeIcons.plus,
                              ),
                              onPress: () {
                                setState(() {
                                  ++age;
                                });
                              },
                            ),
                            RoundedIconButton(
                              icon: const Icon(
                                FontAwesomeIcons.minus,
                              ),
                              onPress: () {
                                setState(() {
                                  --age;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(
                  context,
                  "/result"
              );
            },
            child: Container(
              color: kBottomContainerColor,
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
              child: const Center(
                child: Text(
                    "CALCULATE",
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

