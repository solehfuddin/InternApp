import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WidgetIntroContent extends StatelessWidget {
  String description;
  String fontFamily;
  double fontSize = 0;
  final fontWeight;
  final fontColor;

  WidgetIntroContent({
    required this.description,
    required this.fontSize,
    required this.fontFamily,
    this.fontWeight,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Text(
        description,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          color: fontColor,
        ),
      ),
    );
  }
}
