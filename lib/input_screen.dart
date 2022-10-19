import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  InputScreenState createState() => InputScreenState();
}

class InputScreenState extends State<InputScreen> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

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
                  color: maleCardColor,
                  child: const IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                  onPressed: () => updateGenderCardsColor(),
                ),
                ReusableCard(
                  color: femaleCardColor,
                  onPressed: () => updateGenderCardsColor(isMaleCard: false),
                  child: const IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              ],
            ),
          ),
          const ReusableCard(),
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
            height: bottomContainerHeight,
            color: bottomContainerColor,
          ),
        ],
      ),
    );
  }

  void updateGenderCardsColor({bool isMaleCard = true}) {
    setState(() {
      if (isMaleCard) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      }
    });
  }
}
