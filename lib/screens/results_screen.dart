import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/bottom_button.dart';
import '../widgets/reusable_card.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

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
              children: const [
                Text(
                  'NORMAL',
                  textAlign: TextAlign.center,
                  style: kResultTextStyle,
                ),
                Text(
                  '18.7',
                  textAlign: TextAlign.center,
                  style: kBMITextStyle,
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Your BMI results is quite low, you should eat more!',
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ),
              ],
            ),
          ),
          const BottomButton(label: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
