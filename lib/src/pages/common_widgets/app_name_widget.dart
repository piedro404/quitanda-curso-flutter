import 'package:flutter/material.dart';
import 'package:quitanda/src/config/custom_colors.dart';

class AppNameWidget extends StatelessWidget {
  final Color? titleMainColor;
  final double textSize;

  const AppNameWidget({
    super.key,
    this.titleMainColor,
    this.textSize = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: TextStyle(
          fontSize: textSize,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: "Green",
            style: TextStyle(
              color: titleMainColor ?? CustomColors.customSwatchColor,
            ),
          ),
          TextSpan(
            text: "grocer",
            style: TextStyle(
              color: CustomColors.customContrastColor,
            ),
          ),
        ],
      ),
    );
  }
}