import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    super.key,
    required this.icon,
    required this.label,
  });

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 56.0,
          color: kIconColor,
        ),
        const SizedBox(height: 20.0),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
