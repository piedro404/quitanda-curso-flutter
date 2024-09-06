import 'package:flutter/material.dart';
import 'package:quitanda/src/config/custom_colors.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile(
      {super.key, required this.category, required this.isSelect, required this.onPressed});

  final String category;
  final bool isSelect;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: InkWell(
        onTap: onPressed,
        child: Ink(
          padding: const EdgeInsets.symmetric(
            horizontal: 6,
            vertical: 4,
          ),
          decoration: BoxDecoration(
            color: isSelect ? CustomColors.customSwatchColor : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            category,
            style: TextStyle(
              color: isSelect ? Colors.white : CustomColors.customContrastColor,
              fontWeight: FontWeight.bold,
              fontSize: isSelect ? 16 : 14,
            ),
          ),
        ),
      ),
    );
  }
}
