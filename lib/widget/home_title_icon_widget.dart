import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeTitleIconWidget extends StatelessWidget {
  double marginHor = 0;
  double marginVer = 0;
  double iconSize = 0;
  double fontSize = 0;

  String title, fontFamily;
  final icon;
  final iconColor;
  final fontweight;
  final fontColor;

  HomeTitleIconWidget({
    required this.marginHor,
    required this.marginVer,
    required this.iconSize,
    required this.title,
    required this.fontFamily,
    required this.fontSize,
    this.icon,
    this.iconColor,
    this.fontweight,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: marginVer, horizontal: marginHor),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: iconColor,
            size: iconSize,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 2,
            ),
            child: Text(
              title,
              style: TextStyle(
                fontFamily: fontFamily,
                fontWeight: fontweight,
                fontSize: fontSize,
                color: fontColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
