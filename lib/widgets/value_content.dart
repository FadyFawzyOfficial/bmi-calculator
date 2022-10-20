import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class ValueContent extends StatelessWidget {
  final String label;
  final int value;
  final VoidCallback onMinusPressed;
  final VoidCallback onPlusPressed;

  const ValueContent({
    super.key,
    required this.label,
    required this.value,
    required this.onMinusPressed,
    required this.onPlusPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: kLabelTextStyle,
        ),
        Text(
          '$value',
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedIconButton(
              icon: FontAwesomeIcons.minus,
              onPressed: onMinusPressed,
            ),
            const SizedBox(width: 16),
            RoundedIconButton(
              icon: FontAwesomeIcons.plus,
              onPressed: onPlusPressed,
            ),
          ],
        )
      ],
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
