import 'package:flutter/material.dart';
import '../constants.dart';


class IconContent extends StatelessWidget {
  late final IconData icon;
  late final String lable;

  IconContent({required this.icon, required this.lable});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          lable,
          style: kLableTextStayle,
        )
      ],
    );
  }
}
