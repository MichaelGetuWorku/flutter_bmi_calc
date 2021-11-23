import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  // const RoundIconButton({Key? key}) : super(key: key);
  RoundIconButton({required this.icon, required this.onPressed});
  late final IconData icon;
  late final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 48.0,
        height: 48.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
