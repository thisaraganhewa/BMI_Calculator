import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const cardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

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
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: cardColor,
                    cardChild: CardChild( name: "Male", icon: FontAwesomeIcons.mars )
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      colour: cardColor,
                      cardChild: CardChild( name: "Female", icon: FontAwesomeIcons.personDress)
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard( colour: cardColor),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: cardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: cardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )

        ],
      ),

    );
  }
}

class CardChild extends StatelessWidget {

  final String? name;
  final IconData?  icon;

  CardChild( { this.name, this.icon } );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          //FontAwesomeIcons.icon,
          icon ?? FontAwesomeIcons.question,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          name ?? '',
          style: const TextStyle(
              color: Color(0xFF8D8E98),
              fontSize: 18.0
          ),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {

  final Color? colour;
  final Widget? cardChild;

  ReusableCard({this.colour, this.cardChild});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
      child: cardChild,
      // height: 200.0,
      // width: 170.0,
    );
  }
}