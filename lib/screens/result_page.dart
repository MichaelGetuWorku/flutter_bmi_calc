import 'package:bmi_calc/components/buttom_button.dart';
import 'package:bmi_calc/components/reusable_card.dart';
import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  late final String bmiResult;
  late final String resultText;
  late final String interpretation;

  ResultsPage(
      {required this.bmiResult,
      required this.interpretation,
      required this.resultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              myColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toUpperCase(), style: kRsultTextStyle),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              onPress: () {},
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE'),
        ],
      ),
    );
  }
}
