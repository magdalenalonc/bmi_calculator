import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomCalculateButton extends StatelessWidget {
  const BottomCalculateButton({
    super.key,
    required this.onTap,
    required this.buttonTitle,
    required this.icon,
  });

  final void Function()? onTap;
  final String buttonTitle;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton.icon(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          elevation: 6,
          backgroundColor: kElevatedButtonColor,
          foregroundColor: Colors.black,
          minimumSize: const Size(double.infinity, 100),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        label: Text(
          buttonTitle,
          style: kBottomCalculateButtonTextStyle,
        ),
        icon: icon,
      ),
    );
  }
}
