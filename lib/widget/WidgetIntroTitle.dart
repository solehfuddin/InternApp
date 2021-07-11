import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WidgetIntroTitle extends StatelessWidget {
  double spaceTop = 0;
  double spaceLine = 0;
  double fontSize = 0;

  var textTopPrimary;
  var textTopSecond;

  final primaryColor;
  final secondColor;
  final fontweight;

  WidgetIntroTitle({
    required this.spaceTop,
    required this.spaceLine,
    required this.fontSize,
    this.primaryColor,
    this.secondColor,
    this.fontweight,
    this.textTopPrimary,
    this.textTopSecond,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: spaceTop,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textTopPrimary,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: fontweight,
                color: primaryColor,
              ),
            ),
            SizedBox(
              width: spaceLine,
            ),
            Text(
              textTopSecond,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: fontweight,
                color: secondColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
