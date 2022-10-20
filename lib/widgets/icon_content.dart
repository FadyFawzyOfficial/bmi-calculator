import 'package:flutter/material.dart';

import '../constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconContent({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: kIconSize,
        ),
        const SizedBox(height: 16),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
