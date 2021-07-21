import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeTitleWidget extends StatelessWidget {
  double marginHor = 0;
  double marginVer = 0;
  double fontSize  = 0;

  String title;
  final fontFamily;
  final fontWeight;
  final fontColor;

  HomeTitleWidget({
    required this.marginHor,
    required this.marginVer,
    required this.fontSize,
    required this.title,
    this.fontFamily,
    this.fontWeight,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: marginHor,
        vertical: marginVer,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: fontColor,
          fontFamily: fontFamily,
        ),
      ),
    );
  }
}
