import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextTitleWidget extends StatelessWidget {
  double horizontalMargin = 0;
  double fontSize = 0;

  String textTitle;
  final fontFamily;
  final fontWeight;
  final textColor;

  TextTitleWidget({
    required this.horizontalMargin,
    required this.textTitle,
    required this.fontSize,
    this.fontFamily,
    this.fontWeight,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: horizontalMargin,
        vertical: 7,
      ),
      alignment: Alignment.topLeft,
      child: Text(
        textTitle,
        style: TextStyle(
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          color: textColor,
        ),
      ),
    );
  }
}
