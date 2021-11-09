import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../constants.dart';
import '../components/bottom_button.dart';
import 'package:bmi_app/calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    Key? key,
    // required this.bmiResult,
    // required this.bmiText,
    // required this.bmiInterpretation,
  }) : super(key: key);

  // final String bmiResult;
  // final String bmiText;
  // final String bmiInterpretation;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: kAppTitle,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: const Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    args['bmiText'],
                    style: kResultTextStyle,
                  ),
                  Text(
                    args['bmiResult'],
                    style: kBmiTextStyle,
                  ),
                  Text(
                    args['bmiInterpretation'],
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonText: 'RE-CALCULATE',
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
          ),
        ],
      ),
    );
  }
}
