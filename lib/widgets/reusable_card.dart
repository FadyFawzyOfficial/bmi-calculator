import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? child;
  final VoidCallback? onPressed;
  const ReusableCard({
    Key? key,
    this.color = kActiveCardColor,
    this.child,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(16)),
          ),
          child: child,
        ),
      ),
    );
  }
}
