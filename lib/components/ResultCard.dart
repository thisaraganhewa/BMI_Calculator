import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {

  final Color? colour;
  final Widget? cardChild;
  final Function()? function;

  ResultCard({this.colour, this.cardChild, this.function});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
        child: cardChild,
        height: 200.0,
        width: 400.0,
      ),
    );
  }
}