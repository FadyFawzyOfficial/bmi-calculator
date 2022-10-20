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
  int weight = 60;
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
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbColor: kFuchsiaColor,
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: kLightGreyColor,
                    overlayColor: kFuchsiaColor.withAlpha(0x30),
                    thumbShape:
                        const RoundSliderThumbShape(enabledThumbRadius: 16),
                    overlayShape:
                        const RoundSliderOverlayShape(overlayRadius: 32),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 100,
                    max: 250,
                    onChanged: (value) =>
                        setState(() => height = value.round()),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ReusableCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'WEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Text(
                        '$weight',
                        style: kNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () => setState(() => weight--),
                          ),
                          const SizedBox(width: 16),
                          RoundedIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () => setState(() => weight++),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                ReusableCard(
                  child: Column(),
                ),
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

class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const RoundedIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6,
      fillColor: kGreyColor,
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
