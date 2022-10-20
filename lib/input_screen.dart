import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

enum Gender {
  male,
  female,
}

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  InputScreenState createState() => InputScreenState();
}

class InputScreenState extends State<InputScreen> {
  int height = 180;
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI CALCULATOR')),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                ReusableCard(
                  color: selectedGender == Gender.male
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  child: const IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                  onPressed: () => setState(() => selectedGender = Gender.male),
                ),
                ReusableCard(
                  color: selectedGender == Gender.female
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  child: const IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                  onPressed: () =>
                      setState(() => selectedGender = Gender.female),
                ),
              ],
            ),
          ),
          ReusableCard(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'HEIGHT',
                  style: kLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '$height',
                      style: kNumberTextStyle,
                    ),
                    const Text(
                      'cm',
                      style: kLabelTextStyle,
                    ),
                  ],
                ),
                Slider(
                  value: height.toDouble(),
                  min: 100,
                  max: 250,
                  activeColor: kFuchsiaColor,
                  inactiveColor: kLightGrey,
                  onChanged: (value) => setState(() => height = value.round()),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                ReusableCard(),
                ReusableCard(),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: kBottomContainerHeight,
            color: kFuchsiaColor,
          ),
        ],
      ),
    );
  }
}
