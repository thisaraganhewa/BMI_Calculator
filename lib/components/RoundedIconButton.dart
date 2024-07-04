import 'package:flutter/material.dart';
import '../Constants.dart';

class RoundedIconButton extends StatelessWidget {

  final Widget icon;
  final Function() onPress;

  const RoundedIconButton( { required this.icon, required this.onPress } );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56.0,
      height: 56.0,
      child: MaterialButton(
        onPressed: onPress,
        elevation: 6.0,
        shape: const CircleBorder(),
        color: kRoundedButtonColor,
        child: icon,
      ),
    );
  }
}
