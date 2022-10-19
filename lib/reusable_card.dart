import 'package:flutter/material.dart';

const activeCardColor = Color(0xFF1D1E33);

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? child;
  const ReusableCard({
    Key? key,
    this.color = activeCardColor,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: child,
      ),
    );
  }
}
