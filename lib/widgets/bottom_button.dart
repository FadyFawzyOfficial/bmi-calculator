import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String label;
  final Widget? goTo;
  const BottomButton({
    Key? key,
    required this.label,
    this.goTo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => goTo != null
          ? Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => goTo!,
              ),
            )
          : Navigator.pop(context),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: kBottomContainerHeight,
        color: kFuchsiaColor,
        padding: const EdgeInsets.only(bottom: 16),
        child: Text(
          label,
          style: kLargeButtonTextStyle,
        ),
      ),
    );
  }
}
