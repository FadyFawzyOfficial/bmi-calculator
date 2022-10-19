import 'package:flutter/material.dart';

const iconSize = 80.0;
const labelTextStyle = TextStyle(
  color: Color(0xFF8D8E98),
  fontSize: 18,
);

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
          size: iconSize,
        ),
        const SizedBox(height: 16),
        Text(
          label,
          style: labelTextStyle,
        )
      ],
    );
  }
}
