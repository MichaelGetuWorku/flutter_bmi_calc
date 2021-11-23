import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  late final onTap;
  late final buttonTitle;

  BottomButton({required this.onTap, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        // padding: EdgeInsets.only(bottom: 10),
        width: double.infinity,
        height: kBottemContainerHight,
      ),
    );
  }
}
