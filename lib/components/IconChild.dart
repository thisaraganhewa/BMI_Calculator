import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Constants.dart';

const iconSize = 80.0;
const sizedBoxSize = 15.0;
const fontSize = 18.0;

class IconChild extends StatelessWidget {

  final String? name;
  final IconData?  icon;

  IconChild( { this.name, this.icon } );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          //FontAwesomeIcons.icon,
          icon ?? FontAwesomeIcons.question,
          size: iconSize,
        ),
        const SizedBox(
          height: sizedBoxSize,
        ),
        Text(
          name ?? '',
          style:kLableTextStyle
        )
      ],
    );
  }
}