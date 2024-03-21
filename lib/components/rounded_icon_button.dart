import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      constraints: const BoxConstraints.tightFor(
        width: 40.0,
        height: 40.0,
      ),
      fillColor: kRoundedIconButtonColor,
      child: Icon(
        icon,
        color: kRoundedButtonIconColor,
      ),
    );
  }
}
