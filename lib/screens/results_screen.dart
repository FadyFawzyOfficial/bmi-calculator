import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/bottom_button.dart';
import '../widgets/reusable_card.dart';

class ResultsScreen extends StatelessWidget {
  final String bmi;
  final String result;
  final String interpretation;

  const ResultsScreen({
    super.key,
    required this.bmi,
    required this.result,
    required this.interpretation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          ),
          ReusableCard(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  result.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: kResultTextStyle,
                ),
                Text(
                  bmi,
                  textAlign: TextAlign.center,
                  style: kBMITextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            label: 'RE-CALCULATE',
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
