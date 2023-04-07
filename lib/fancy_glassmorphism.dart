library fancy_glassmorphism;

import 'package:flutter/material.dart';

class FancyGalssMorphism extends StatelessWidget {
  final Function() onTap;
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontSize;

  const FancyGalssMorphism({
    super.key,
    required this.onTap,
    required this.text,
    this.backgroundColor,
    this.fontSize,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 15, top: 7, bottom: 7, right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: backgroundColor),
        child: Text(
          text,
          style: titleStyle.copyWith(fontSize: fontSize, color: textColor),
        ),
      ),
    );
  }

  final titleStyle = const TextStyle(
    fontWeight: FontWeight.w500,
  );
}
