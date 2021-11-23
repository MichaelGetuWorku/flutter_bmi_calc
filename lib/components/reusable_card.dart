import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // const ReusableCard({Key? key,}) : super(key: key);
  // key will keep track of the widgets while they are moving  and
  // key is an identifire for widgets elements and semanticNotes
  // Coustom Widget
  late final Color myColor;
  late final Widget cardChild;
  late final Function() onPress;
  ReusableCard(
      {required this.myColor, required this.cardChild, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: myColor,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
